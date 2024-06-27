import 'package:flutter/material.dart';

class AiChatProvider with ChangeNotifier {
  List<Map<String, String>> _chatdata = [];
  List<Map<String, String>> get chatdata => _chatdata;
  void setChatData(List<Map<String, String>> chatData) => _chatdata = chatData;
}
