class AuthService {
  bool _loggedIn = false;

  bool get isLoggedIn => _loggedIn;

  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500)); // fake call
    _loggedIn = true;
    return _loggedIn;
  }

  Future<void> logout() async {
    _loggedIn = false;
  }
}
