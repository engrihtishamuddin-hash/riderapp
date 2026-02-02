// lib/features/auth/domain/bloc/auth_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {  // ← Added "sealed"
  const AuthState._();

  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated({
    required String userType,
    required String phone,
  }) = AuthAuthenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.error(String message) = AuthError;
  const factory AuthState.otpSent({
    required String verificationId,
    required String phone,
    String? userType,
    Map<String, String>? userData,
  }) = AuthOtpSent;
  const factory AuthState.passwordResetSuccess() = PasswordResetSuccess;
  const factory AuthState.registeringCustomer() = RegisteringCustomer;
  const factory AuthState.registeringDriver() = RegisteringDriver;
  const factory AuthState.registrationSuccess({
    required String userType,
    required String phone,
  }) = RegistrationSuccess;
}