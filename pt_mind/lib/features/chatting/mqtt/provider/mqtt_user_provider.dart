import 'package:flutter/material.dart';

class MqttUserProvider with ChangeNotifier {
  String _userNickName = "";
  String get userNickName => _userNickName;
  void setUserNickName(String nickName) => _userNickName = nickName;

  String _profile = "";
  String get profile => _profile;
  void setProfile(String profile) => _profile = profile;
}
