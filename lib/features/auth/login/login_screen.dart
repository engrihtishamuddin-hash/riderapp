// lib/features/auth/login/login_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/core/router/app_router.dart';
import 'package:staff_pickup/core/widgets/app_button.dart';
import 'package:staff_pickup/core/widgets/app_text_field.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_event.dart';
import 'package:staff_pickup/features/auth/domain/bloc/auth_state.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';

class LoginScreen extends StatelessWidget {
  final _phoneCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (userType, phone) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('خوش آمدید، $userType!')),
            );
            Navigator.pushNamedAndRemoveUntil(context, RouteNames.home, (route) => false);
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
            title: const Text('لاگ ان'),
            backgroundColor: Colors.green.shade700,
            foregroundColor: Colors.white,
            elevation: 2,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Phone & Password Fields
                AppTextField(
                  controller: _phoneCtrl,
                  label: loc.phoneNumber,
                  keyboardType: TextInputType.phone,
                  prefixIcon: const Icon(Icons.phone_android, color: Colors.green),
                  hintText: '03XX-XXXXXXX',
                  validator: (v) => v?.trim().isEmpty == true ? 'فون نمبر درکار ہے' : null,
                ),
                const SizedBox(height: 16),
                AppTextField(
                  controller: _passCtrl,
                  label: loc.password,
                  obscureText: true,
                  prefixIcon: const Icon(Icons.lock_outline, color: Colors.green),
                  hintText: '••••••••',
                  validator: (v) => v?.isEmpty == true ? 'پاس ورڈ درکار ہے' : null,
                ),
                const SizedBox(height: 32),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: AppButton(
                    label: isLoading ? 'جاری ہے...' : 'داخل ہوں',
                    onPressed: isLoading
                        ? null
                        : () {
                            final phone = _phoneCtrl.text.trim();
                            final password = _passCtrl.text;

                            if (phone.isNotEmpty && password.isNotEmpty) {
                              context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  phone: phone,
                                  password: password,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('براہ کرم تمام فیلڈز بھریں')),
                              );
                            }
                          },
                  ),
                ),

                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, RouteNames.forgotPassword),
                  child: Text(
                    'پاس ورڈ بھول گئے؟',
                    style: TextStyle(color: Colors.green.shade700),
                  ),
                ),

                const Spacer(),

                // New Account Section
                const Text(
                  'نیا اکاؤنٹ بنائیں',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 20),

                // Register as Customer
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.person_add, color: Colors.blue),
                    label: const Text('کسٹمر کے طور پر رجسٹر کریں', style: TextStyle(fontSize: 16)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.blue, width: 2),
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () => Navigator.pushNamed(context, RouteNames.registerCustomer),
                  ),
                ),

                const SizedBox(height: 16),

                // Register as Driver
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.directions_bike, color: Colors.white),
                    label: const Text('رائیڈر/ڈرائیور کے طور پر رجسٹر کریں', style: TextStyle(fontSize: 16)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700,
                      foregroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () => Navigator.pushNamed(context, RouteNames.registerDriver),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}