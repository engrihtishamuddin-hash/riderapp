// lib/features/auth/otp/otp_verification_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:staff_pickup/core/widgets/app_button.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_state.dart';

class OtpVerificationScreen extends StatelessWidget {
  final String verificationId;
  final String phone;
  final String? userType;
  final Map<String, String>? userData;

  final _otpController = TextEditingController();

  OtpVerificationScreen({
    super.key,
    required this.verificationId,
    required this.phone,
    this.userType,
    this.userData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP تصدیق'),
        backgroundColor: Colors.green.shade700,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.sms_outlined, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            Text(
              'OTP کوڈ درج کریں',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            Text(
              '$phone پر بھیجا گیا',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const SizedBox(height: 40),

            // OTP Input Fields
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: _otpController,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 50,
                fieldWidth: 45,
                activeColor: Colors.green,
                selectedColor: Colors.green.shade300,
                inactiveColor: Colors.grey.shade300,
              ),
              onChanged: (_) {}, // we read from controller so ok
            ),

            const SizedBox(height: 40),

            // Show loading + success automatically
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)),
                  );
                }
                if (state is RegistrationSuccess || state is PasswordResetSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تصدیق کامیاب ہو گئی!')),
                  );
                  Navigator.pushReplacementNamed(context, '/home'); // change to your home route
                }
              },
              builder: (context, state) {
                bool isLoading = state is AuthLoading;

                return SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: AppButton(
                    label: isLoading ? 'تصدیق ہو رہی ہے...' : 'تصدیق کریں',
                    onPressed: isLoading
                        ? null
                        : () {
                            final otp = _otpController.text.trim();
                            if (otp.length == 6) {
                              if (userType != null && userData != null) {
                                // Registration flow
                                context.read<AuthBloc>().add(
                                      VerifyOtpEvent(
                                        verificationId: verificationId,
                                        otp: otp,
                                        phone: phone,
                                        userType: userType!,
                                        userData: {...userData!, 'phone': phone},
                                      ),
                                    );
                              } else {
                                // Password reset flow (add this event if you need)
                                context.read<AuthBloc>().add(
                                      VerifyOtpEvent(
                                        verificationId: verificationId,
                                        otp: otp,
                                        phone: phone,
                                      ),
                                    );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('6 ہندسوں کا OTP درج کریں')),
                              );
                            }
                          },
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Resend OTP (call your RequestOtpEvent again)
                context.read<AuthBloc>().add(RequestOtpEvent(phone: phone));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OTP دوبارہ بھیج دیا گیا')),
                );
              },
              child: const Text('OTP دوبارہ بھیجیں'),
            ),
          ],
        ),
      ),
    );
  }
}