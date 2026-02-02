// lib/core/websocket/socket_client.dart
import 'dart:async'; // This defines StreamController
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:staff_pickup/core/env/env.dart';
import 'package:staff_pickup/injection_container.dart' as di;

class SocketClient {
  static final SocketClient _instance = SocketClient._internal();
  factory SocketClient() => _instance;
  SocketClient._internal();

  WebSocketChannel? _channel;
  final _controller = StreamController<dynamic>.broadcast();

  Stream<dynamic> get stream => _controller.stream;

  void connect() {
    final uri = Uri.parse(di.sl<Env>().socketUrl);
    _channel = WebSocketChannel.connect(uri);
    _channel!.stream.listen(
      (msg) => _controller.add(msg),
      onError: (e) => _controller.addError(e),
      onDone: reconnect,
    );
  }

  void reconnect() {
    _channel?.sink.close();
    Future.delayed(const Duration(seconds: 5), connect);
  }

  void send(Map payload) => _channel?.sink.add(jsonEncode(payload));

  void dispose() {
    _channel?.sink.close();
    _controller.close();
  }
}