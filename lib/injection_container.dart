// lib/injection_container.dart
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Core
import 'package:staff_pickup/core/env/env.dart';

// Data Layer
import 'package:staff_pickup/core/local/token_repo.dart';
import 'package:staff_pickup/core/network/api_client.dart';
import 'package:staff_pickup/core/websocket/socket_client.dart';
import 'package:staff_pickup/core/push/fcm_service.dart';

// Repositories
import 'package:staff_pickup/features/auth/bloc/auth_repo.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_repo.dart';

// Blocs
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';
import 'package:staff_pickup/features/home/bloc/home_map_bloc.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_bloc.dart';


// Define the Service Locator
final sl = GetIt.instance;

Future<void> init() async {
  // ─────────────────────────────────────
  // 1. Load .env
  // ─────────────────────────────────────
  //await dotenv.load(fileName: 'assets/.env');

  // ─────────────────────────────────────
  // 2. Register Env
  // ─────────────────────────────────────
  sl.registerLazySingleton<Env>(() => Env.fromMap(dotenv.env));

  // ─────────────────────────────────────
  // 3. External: SharedPreferences
  // ─────────────────────────────────────
  final sharedPrefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  // ─────────────────────────────────────
  // 4. Core Services
  // ─────────────────────────────────────
  sl.registerLazySingleton<TokenRepo>(() => TokenRepo());
  sl.registerLazySingleton<ApiClient>(() => ApiClient());
  sl.registerLazySingleton<SocketClient>(() => SocketClient());
  sl.registerLazySingleton<FCMService>(() => FCMService());

  // ─────────────────────────────────────
  // 5. Repositories
  // ─────────────────────────────────────
  // FIXED: AuthRepo needs 2 parameters ✅
  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(sl<ApiClient>(), sl<TokenRepo>()));
  
  sl.registerLazySingleton<PickupRepository>(() => PickupRepository(sl()));

  // ─────────────────────────────────────
  // 6. Blocs (Factory = new instance per screen)
  // ─────────────────────────────────────
  sl.registerFactory<AuthBloc>(() => AuthBloc(sl()));
  sl.registerFactory<HomeMapBloc>(() => HomeMapBloc(sl()));
  sl.registerFactory<PickupBloc>(() => PickupBloc(sl()));
}

extension GetItTestExtensions on GetIt {
  void allowReassignment() {
    }
}