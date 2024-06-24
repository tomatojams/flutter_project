import 'package:flutter/material.dart';

// 프로바이더를 쓸때는 watch를 써야지 watch()를 쓰면 에러가 남

class AuthProvider with ChangeNotifier {
  bool _userRegister = false;
  bool get userRegister => _userRegister;
  void setUserRegister(bool userRegister) => _userRegister = true;
  void clearUserRegister() => _userRegister = false;
}
