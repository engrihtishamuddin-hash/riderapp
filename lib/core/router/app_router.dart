// lib/core/router/app_router.dart

import 'package:flutter/material.dart';
import 'package:staff_pickup/features/splash/splash_screen.dart';
import 'package:staff_pickup/features/auth/login/login_screen.dart';
import 'package:staff_pickup/features/auth/register/customer/register_pickup_screen.dart';
import 'package:staff_pickup/features/auth/register/driver/register_driver_screen.dart';
import 'package:staff_pickup/features/home/home_screen.dart';
import 'package:staff_pickup/features/pickup/pickup_screen.dart';
import 'package:staff_pickup/features/auth/forgot_password/forgot_password_screen.dart';

class RouteNames {
  static const splash         = '/';
  static const login          = '/login';
  static const home           = '/home';
  static const pickup        = '/pickup';
  static const forgotPassword = '/forgot-password';
  
  // ← YE DO NEW ROUTES ADD KAR DIYE!
  static const otpVerification = '/otp-verification'; 
  static const registerCustomer = '/register-customer';
  static const registerDriver   = '/register-driver';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case RouteNames.pickup:
        final pickup = settings.arguments as Map<String, String>;
        return MaterialPageRoute(builder: (_) => PickupScreen(pickup: pickup));

      case RouteNames.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());

      // ← YE DO NEW SCREENS ADD KAR DIYE!
      case RouteNames.registerCustomer:
        return MaterialPageRoute(builder: (_) =>   RegisterPickupScreen()); 

      case RouteNames.registerDriver:
        return MaterialPageRoute(builder: (_) =>  RegisterDriverScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text(
                'صفحہ نہیں ملا',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ),
        );
    }
  }
}