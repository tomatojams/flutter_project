import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:pt_mind/models/mqtt_chat_model.dart';
import 'mqtt_repo.dart';

class ChatProvider with ChangeNotifier {
  // 함수 리스트
  // 1. _update
  // 2. sendChat
  // 3. join
  // 변수리스트
  // 1. mqttService = MqttRepo()
  // 2. _isLoad = false
  // 3. _chatUserList = []
  // 4. _chat = []

  MqttRepo mqttService = MqttRepo();
  bool _isLoad = false;
  bool get isLoad => _isLoad;

  void _update(bool loadingStatus) {
    _isLoad = loadingStatus;
    notifyListeners();
  }

  final List<String> _chatUserList = [];
  List<String> get chatUserList => [..._chatUserList];

  final List<MqttChatModel> _chat = [];
  List<MqttChatModel> get chat => [..._chat];

  void sendChat({required String nickName, required String chat}) {
    // print(nickName);
    // print(chat);
    mqttService.client.publishMessage(
        "CHAT",
        MqttQos.atMostOnce,
        MqttClientPayloadBuilder()
            .addString(json.encode({"userNickName": nickName, "chat": chat}))
            .payload!);
  }

  final String TOPIC_CHAT_JOIN = "CHAT_LIST_JOIN";
  final String TOPIC_CHAT = "CHAT";

  Future<bool> join({required String nickName}) async {
    _update(true);
    final MqttConnectionState? state =
        await mqttService.connect(nickName: nickName);
    _update(false);
    if (state != MqttConnectionState.connected) return false;
    mqttService.client.subscribe(TOPIC_CHAT_JOIN, MqttQos.atMostOnce);
    mqttService.client.subscribe(TOPIC_CHAT, MqttQos.atMostOnce);

    mqttService.client.updates
        ?.listen((List<MqttReceivedMessage<MqttMessage>> event) {
      final String payLoad = mqttService.parse(event);
      Map<String, dynamic> json = jsonDecode(payLoad);
      if (json["join"] != null) {
        String joinUserNickName = json["join"];
        if (!_chatUserList.contains(joinUserNickName)) {
          _chatUserList.add(joinUserNickName);
        }
      } else {
        final MqttChatModel mqttchatModel = MqttChatModel.json(json);
        _chat.insert(0, mqttchatModel);
      }
      notifyListeners();
    });
    mqttService.client.publishMessage(
        TOPIC_CHAT_JOIN,
        MqttQos.atMostOnce,
        MqttClientPayloadBuilder()
            .addString(json.encode({"join": nickName}))
            .payload!);
    return true;
  }
}
