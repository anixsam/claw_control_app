import 'package:flutter/material.dart';
class BluetoothConnectionState with ChangeNotifier {

  bool _isConnected = false;
  bool get isConnected => _isConnected;

  void setConnectionState(bool state) {
    _isConnected = state;
    notifyListeners();
  }
}