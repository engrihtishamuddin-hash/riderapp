// lib/main.dart
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:staff_pickup/core/theme/app_theme.dart';
import 'package:staff_pickup/core/router/app_router.dart';
import 'package:staff_pickup/features/auth/bloc/auth_bloc.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/injection_container.dart' as di;
import 'package:flutter/foundation.dart' show kIsWeb;
//import 'firebase_options.dart';   // generated file – see below

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Debug: Check existing Firebase apps
  debugPrint('🔥 Firebase apps count: ${Firebase.apps.length}');
  
  // Only initialize if no apps exist
 
    try {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
      debugPrint('✅ Firebase initialized successfully');
    }
     catch (e) {
      debugPrint('❌ Firebase init error: $e');
    }
 
  
  // Load environment
  try {
    await dotenv.load(fileName: 'assets/.env');
    debugPrint('✅ Environment loaded');
  } catch (e) {
    debugPrint('❌ Environment load error: $e');
  }
  
// Initialize HydratedBloc storage
try {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getApplicationDocumentsDirectory()).path),
  );
  debugPrint('✅ HydratedBloc storage initialized');
} catch (e) {
  debugPrint('❌ Storage init error: $e');
}
  
  // Initialize DI
  try {
    await di.init();
    debugPrint('✅ Dependency injection initialized');
  } catch (e) {
    debugPrint('❌ DI init error: $e');
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<AuthBloc>()),
        // Add other blocs here as needed
        // BlocProvider(create: (_) => di.sl<PickupBloc>()),
        // BlocProvider(create: (_) => di.sl<HomeMapBloc>()),
      ],
      child: MaterialApp(
        title: 'Staff Pickup',
        debugShowCheckedModeBanner: false,
                
        // Themes
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        
        // Localization
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ur', ''),
        ],
        locale: const Locale('ur'), // Default to Urdu for Pakistan
        
        // Routing
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: RouteNames.splash,
      ),
    );
    
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Text(
              loc.appTitle, // "Staff Pickup" or "اسٹاف پک اپ"
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}