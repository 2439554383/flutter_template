class UserData {
  static UserData? _instance;
  bool isLogin = false;

  loginSuccess() {
    isLogin = true;
  }

  loginOut() {
    isLogin = false;
  }


  factory UserData() {
    _instance ??= UserData._();
    return _instance!;
  }
  UserData._();
}
