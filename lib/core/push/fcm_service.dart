// lib/core/push/fcm_service.dart
import 'package:firebase_messaging/firebase_messaging.dart'; // Fixed import

// Background handler (must be top-level)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Add your background logic here
  print("Background message: ${message.messageId}");
}

class FCMService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    // Request permission
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    print('Permission: ${settings.authorizationStatus}');

    // Set background handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Foreground message: ${message.notification?.title}');
    });

    // Get FCM token (optional)
    final token = await _messaging.getToken();
    print('FCM Token: $token');
  }
}