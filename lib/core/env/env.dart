// lib/core/env/env.dart
class Env {
  final String baseUrl;
  final String mapboxToken;
  final String fcmServerKey;
  final String socketUrl;
  

  Env({
    required this.baseUrl,
    required this.mapboxToken,
    required this.fcmServerKey,
    required this.socketUrl,
  });

  // Factory to load from .env
  factory Env.fromMap(Map<String, String> env) {
    return Env(
      baseUrl: env['BASE_URL'] ?? 'https://staging-api.yourdomain.com',
      mapboxToken: env['MAPBOX_TOKEN'] ?? 'pk.eyJ1IjoiaWh0aXNoYW11ZGRpbiIsImEiOiJjbWkwZzIyOWIwY3hnMmxzZm1oaTFyMGZ2In0.fwPxnbVNXZczlMg-nZfi8Q',
      fcmServerKey: env['FCM_SERVER_KEY'] ?? 'your-fcm-server-key-here', // ADD THIS
      socketUrl: env['SOCKET_URL'] ?? 'wss://staging-api.yourdomain.com/ws',

    );
  }
}