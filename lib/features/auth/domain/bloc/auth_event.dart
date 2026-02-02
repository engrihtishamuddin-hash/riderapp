// lib/features/auth/domain/bloc/auth_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {  // ← Fixed: added "sealed"
  const AuthEvent._();

  const factory AuthEvent.login({
    required String phone,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.logout() = LogoutEvent;

  const factory AuthEvent.refreshToken() = RefreshTokenEvent;

  const factory AuthEvent.requestOtp({
    required String phone,
  }) = RequestOtpEvent;

  const factory AuthEvent.verifyOtp({
    required String verificationId,
    required String otp,
    required String phone,
    Map<String, String>? userData,
    String? userType,
  }) = VerifyOtpEvent;

  const factory AuthEvent.resetPassword({
    required String phone,
    required String otp,
    required String newPassword,
  }) = ResetPasswordEvent;

  const factory AuthEvent.registerCustomer({
    required String phone,
    required String name,
    required String cnic,
  }) = RegisterCustomerEvent;

  const factory AuthEvent.registerDriver({
    required String phone,
    required String name,
    required String vehicleNo,
    required String licenseNo,
  }) = RegisterDriverEvent;
}