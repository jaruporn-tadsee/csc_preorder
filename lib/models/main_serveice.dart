class LoginStatus {
  bool _islogin = false;
  bool loginStatus() => _islogin;
  bool updateStatus() => _islogin = !_islogin;
}
