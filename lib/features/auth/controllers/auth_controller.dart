import 'package:flutter/foundation.dart';
import 'package:merchnest/services/api/auth_service.dart';

class AuthController extends ChangeNotifier {
  final AuthService _service;
  AuthController(this._service);

  bool get isLoggedIn => _service.isLoggedIn;

  Future<bool> login(String email, String password) async {
    final ok = await _service.login(email, password);
    notifyListeners();
    return ok;
  }

  Future<void> logout() async {
    await _service.logout();
    notifyListeners();
  }
}
