import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthNotifier with ChangeNotifier {
  static const _tokenKey = 'token';
  static AuthNotifier instance = AuthNotifier._();

  final _storage = const FlutterSecureStorage();

  bool _isLogged = false;
  bool get isLogged => _isLogged;

  Future<String?> get token => _storage.read(key: _tokenKey);

  AuthNotifier._();

  Future<void> login(String token) async {
    await _storage.write(
      key: _tokenKey,
      value: token,
    );
    _isLogged = true;
    notifyListeners();
  }

  Future<void> logout() async {
    await _storage.delete(key: _tokenKey);
    _isLogged = false;
    notifyListeners();
  }


  Future<void> checkLogin() async {
    _isLogged = await _storage.containsKey(key: _tokenKey);
    notifyListeners();
  }
}
