import 'package:socket_io_client/socket_io_client.dart' as io;

class AppSocketAllOperation {
  static final AppSocketAllOperation _instance =
  AppSocketAllOperation._internal();
  factory AppSocketAllOperation() => _instance;

  io.Socket? appRootSocket;

  AppSocketAllOperation._internal() {
    _connectSocketToServer();
  }

  bool _isSocketConnected() {
    return appRootSocket != null && appRootSocket?.connected == true;
  }

  void readEvent({
    required String event,
    required void Function(dynamic) handler,
  }) {
    try {
      if (_isSocketConnected()) {
        appRootSocket?.on(event, (data) {
          print("Received event: $event with data: $data");
          handler(data);
        });
      }
    } catch (e, stackTrace) {
      print("readEvent ($event)$e $stackTrace", );
    }
  }

  void emitEvent(String event, dynamic data) {
    try {
      if (_isSocketConnected()) {
        appRootSocket?.emit(event, data);
      }
    } catch (e, stackTrace) {
      print("emitEvent ($event) $e $stackTrace", );
    }
  }


  double _convertToDouble(dynamic value) {
    try {
      return double.parse(value.toString());
    } catch (e, stackTrace) {
      print("_convertToDouble $e $stackTrace", );
      return 0.0;
    }
  }

  void _connectSocketToServer() {
    try {
      if (_isSocketConnected()) {
        return;
      }

      appRootSocket = io.io(
          "http://10.0.80.75:6003",
          io.OptionBuilder()
              .setTransports(['websocket']) // for Flutter or Dart VM
              .disableAutoConnect() // disable auto-connection
              .setExtraHeaders({'foo': 'bar'}) // optional
              .build());

      appRootSocket?.connect();

      // Event listeners
      appRootSocket?.onConnect((_) => print("Socket connected"));
      appRootSocket
          ?.onDisconnect((data) => print("Socket disconnected $data", ));
      appRootSocket?.onConnectError((data) => print("Connect error $data", ));
      appRootSocket?.onError((data) => print("Error $data", ));
      appRootSocket?.onReconnect((_) => print("Socket reconnected"));
    } catch (e, stackTrace) {
      print(
        "_connectSocketToServer $e $stackTrace",
      );
    }
  }

  void reconnect() {
    if (!_isSocketConnected()) {
      _connectSocketToServer();
    }
  }

  void dispose() {
    if (appRootSocket != null) {
      appRootSocket?.disconnect();
      appRootSocket?.dispose();
      appRootSocket = null;
    }
  }
}