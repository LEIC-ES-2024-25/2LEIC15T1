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

  String _searchText = '\"\"';
  String get searchText => _searchText;
  set searchText(String value) {
    _searchText = value;
  }
}
