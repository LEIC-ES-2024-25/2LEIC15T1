import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchisactive = false;
  bool get searchisactive => _searchisactive;
  set searchisactive(bool value) {
    _searchisactive = value;
  }

  String _capturedImagePath = '';
  String get capturedImagePath => _capturedImagePath;
  set capturedImagePath(String value) {
    _capturedImagePath = value;
  }

  bool _SearchActive = false;
  bool get SearchActive => _SearchActive;
  set SearchActive(bool value) {
    _SearchActive = value;
  }

  int _itemPosition = 1;
  int get itemPosition => _itemPosition;
  set itemPosition(int value) {
    _itemPosition = value;
  }

  String _RandomTip = '';
  String get RandomTip => _RandomTip;
  set RandomTip(String value) {
    _RandomTip = value;
  }
}
