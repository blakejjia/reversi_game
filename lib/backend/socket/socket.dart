import 'package:socket_io_client/socket_io_client.dart' as IO;

class WebSocketService {
  late IO.Socket _socket;

  void connect(String url) {
    _socket = IO.io(url, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    _socket.connect();
  }

  void sendMessage(String event, dynamic data) {
    _socket.emit(event, data);
  }

  void onMessage(String event, Function(dynamic) callback) {
    _socket.on(event, callback);
  }

  void disconnect() {
    _socket.disconnect();
  }
}
