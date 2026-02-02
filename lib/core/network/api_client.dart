// lib/core/network/api_client.dart
import 'package:dio/dio.dart';
import 'package:staff_pickup/core/env/env.dart';
import 'package:staff_pickup/core/error/exceptions.dart';
import 'package:staff_pickup/core/local/token_repo.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';
import 'package:staff_pickup/injection_container.dart' as di;

class ApiClient {
  final Dio _dio;

  ApiClient()
      : _dio = Dio(BaseOptions(
          baseUrl: di.sl<Env>().baseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          headers: const {'Content-Type': 'application/json'},
        )) {
    _dio.interceptors.addAll([
      _AuthInterceptor(),
      _RetryOnAuthFailInterceptor(),
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  // GET
  Future<Response> get(String path, {Map<String, String>? queryParameters}) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioError(e);
     // rethrow; // Re-throw the handled error
    } on Exception catch (_) {
      throw NetworkException("No internet connection");
    }
  }

  // POST
  Future<Response> post(String path, {Map<String,String>? data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      _handleDioError(e);
     // rethrow;
    } on Exception catch (_) {
      throw NetworkException("Failed to send data");
    }
  }

  // PUT
  Future<Response> put(String path, {Map<String, String>? data}) async {
    try {
      return await _dio.put(path, data: data);
    } on DioException catch (e) {
      _handleDioError(e);
      //rethrow;
    } on Exception catch (_) {
      throw NetworkException("Failed to update data");
    }
  }

  // DELETE
  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on DioException catch (e) {
      _handleDioError(e);
      //rethrow;
    } on Exception catch (_) {
      throw NetworkException("Failed to delete");
    }
  }

  Never _handleDioError(DioException e) {
    if (e.response?.statusCode == 401) {
      throw AuthException("Session expired. Please login again.");
    }
    final msg = e.response?.data?['message'] as String? ?? e.message ?? "Server error";
    throw ServerException(msg);
  }
}

// ────────────────────────────── AUTH INTERCEPTOR ──────────────────────────────
class _AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await di.sl<TokenRepo>().getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}

// ────────────────────────────── RETRY ON 401 ──────────────────────────────
class _RetryOnAuthFailInterceptor extends Interceptor {
  bool _isRefreshing = false;

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 || _isRefreshing) {
      return handler.next(err);
    }

    _isRefreshing = true;
    try {
      di.sl<AuthBloc>().add(const RefreshTokenEvent());
      final newToken = await _waitForNewToken();

      if (newToken != null) {
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
        final cloneReq = await di.sl<ApiClient>()._dio.fetch(err.requestOptions);
        return handler.resolve(cloneReq);
      }
    } catch (_) {
      di.sl<AuthBloc>().add(const LogoutEvent());
    } finally {
      _isRefreshing = false;
    }
    handler.next(err);
  }

  Future<String?> _waitForNewToken() async {
    for (int i = 0; i < 50; i++) {
      final token = await di.sl<TokenRepo>().getAccessToken();
      if (token != null) return token;
      await Future.delayed(const Duration(milliseconds: 100));
    }
    return null;
  }
}