// lib/features/auth/forgot_password/forgot_password_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/core/widgets/app_button.dart';
import 'package:staff_pickup/core/widgets/app_text_field.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_state.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _phoneCtrl = TextEditingController();
  final _otpCtrl = TextEditingController();
  final _newPassCtrl = TextEditingController();

  bool isOtpSent = false;     // instead of AuthOtpSent
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(loc.forgotPassword)),
      body: Padding(
        padding: const EdgeInsets.all(16),
              child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthOtpSent) {
            setState(() {
              isOtpSent = true;
              isLoading = false;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('OTP sent to +92${state.phone}')),
            );
          } 
          else if (state is PasswordResetSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Password reset successful!')),
            );
            Navigator.pop(context);
          } 
          else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            setState(() => isLoading = false);
          } 
          else if (state is! AuthLoading) {
            setState(() => isLoading = false);
          }
        },
          child: Column(
            children: [
              AppTextField(
                label: loc.phoneNumber,
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                prefixIcon: const Icon(Icons.phone),
                hintText: '03XX-XXXXXXX',
                enabled: !isOtpSent && !isLoading,
              ),
              const SizedBox(height: 16),

              if (isOtpSent) ...[
                AppTextField(
                  label: 'OTP',
                  controller: _otpCtrl,
                  keyboardType: TextInputType.number,
                  prefixIcon: const Icon(Icons.sms),
                  hintText: '123456',
                ),
                const SizedBox(height: 16),
                AppTextField(
                  label: loc.password,
                  controller: _newPassCtrl,
                  obscureText: true,
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'New password',
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    label: 'Reset Password',
                    onPressed: isLoading ? null : _resetPassword,
                  ),
                ),
              ] else
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    label: 'Send OTP',
                    onPressed: isLoading ? null : _sendOtp,
                  ),
                ),

              if (isLoading)
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _sendOtp() {
    
    final phone = _phoneCtrl.text.trim();
    if (phone.isNotEmpty) {
      setState(() => isLoading = true);
      context.read<AuthBloc>().add(RequestOtpEvent(phone:phone));
    }
  }

void _resetPassword() {
  final otp = _otpCtrl.text.trim();
  final newPass = _newPassCtrl.text.trim();
  final phone = _phoneCtrl.text.trim();

  if (otp.isEmpty) {
    // Optionally show snackbar/error
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please enter the OTP')),
    );
    return;
  }

  if (newPass.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please enter a new password')),
    );
    return;
  }

  // Dispatch the event
  context.read<AuthBloc>().add(
    ResetPasswordEvent(
      phone: phone,
      otp: otp,
      newPassword: newPass,
    ),
  );
}
}
