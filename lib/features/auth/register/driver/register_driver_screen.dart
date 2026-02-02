// lib/features/auth/register/driver/register_driver_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/core/router/app_router.dart';
import 'package:staff_pickup/core/widgets/app_button.dart';
import 'package:staff_pickup/core/widgets/app_text_field.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_state.dart';
import 'package:staff_pickup/features/auth/otp/otp_verification_screen.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';

class RegisterDriverScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _phoneCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _vehicleCtrl = TextEditingController();
  final _licenseCtrl = TextEditingController();

  RegisterDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          otpSent: (verificationId, phone, userType, userData) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => OtpVerificationScreen(
                  verificationId: verificationId,
                  phone: phone,
                  userType: userType,
                  userData: userData,
                ),
              ),
            );
          },
          registrationSuccess: (_, __) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('رجسٹریشن کامیاب!')),
            );
            Navigator.pushNamedAndRemoveUntil(
              context,
              RouteNames.home,
              (route) => false,
            );
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },
      builder: (context, state) {
        final isLoading = state is AuthLoading;

        return Scaffold(
          appBar: AppBar(
            title: Text(loc.registerDriver),
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Icon(Icons.directions_bike, size: 80, color: Colors.green),
                  const SizedBox(height: 20),
                  Text(
                    'رائیڈر رجسٹریشن',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 32),

                  AppTextField(
                    controller: _nameCtrl,
                    label: loc.fullName,
                    prefixIcon: const Icon(Icons.person_outline),
                    validator: (v) => v?.trim().isEmpty == true ? 'نام درکار ہے' : null,
                  ),
                  const SizedBox(height: 16),

                  AppTextField(
                    controller: _phoneCtrl,
                    label: loc.phoneNumber,
                    keyboardType: TextInputType.phone,
                    prefixIcon: const Icon(Icons.phone_android),
                    hintText: '03XX-XXXXXXX',
                    validator: (v) {
                      if (v == null || v.trim().isEmpty) return 'فون نمبر درکار ہے';
                      if (v.trim().length != 11) return 'فون نمبر 11 ہندسوں کا ہونا چاہیے';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  AppTextField(
                    controller: _vehicleCtrl,
                    label: loc.vehicleNo,
                    prefixIcon: const Icon(Icons.two_wheeler),
                    hintText: 'ABC-123',
                    validator: (v) => v?.trim().isEmpty == true ? 'گاڑی نمبر درکار ہے' : null,
                  ),
                  const SizedBox(height: 16),

                  AppTextField(
                    controller: _licenseCtrl,
                    label: loc.licenseNo,
                    prefixIcon: const Icon(Icons.badge),
                    hintText: '12345-6789123-4',
                    validator: (v) => v?.trim().isEmpty == true ? 'لائسنس نمبر درکار ہے' : null,
                  ),

                  const SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: AppButton(
                      label: isLoading ? 'جاری ہے...' : loc.register,
                      
                      onPressed: isLoading
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                  AuthEvent.registerDriver(
                                    phone: _phoneCtrl.text.trim(),
                                    name: _nameCtrl.text.trim(),
                                    vehicleNo: _vehicleCtrl.text.trim(),
                                    licenseNo: _licenseCtrl.text.trim(),
                                  ),
                                );
                              }
                            },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}