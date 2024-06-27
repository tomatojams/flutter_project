import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pt_mind/models/mentor_model.dart';
import 'package:pt_mind/services/api_service.dart';

class ChatScrProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final String userId = 'a1234';
  List<Map<String, String>> chatData = [];

  Future<void> initChat() async {
    final chat = await ApiService.getChatAll();
    addMessage({'pt': chat});
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }

    addMessage({'user': text});
    textController.clear();

    final answer = await ApiService.postChat(userId, text);
    addMessage({'pt': answer.toString()});
  }

  void addMessage(Map<String, String> message) {
    chatData.add(message);
    notifyListeners();
  }

  @override
  void dispose() {
    scrollController.dispose();
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }
}
