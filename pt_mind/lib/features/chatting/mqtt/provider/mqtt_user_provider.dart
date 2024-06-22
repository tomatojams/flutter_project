import 'package:flutter/material.dart';
class UserProvider with ChangeNotifier {
  String _userNickName = "";
  String get userNickName => _userNickName;
  void setUserNickName(String nickName) => _userNickName = nickName;
}
