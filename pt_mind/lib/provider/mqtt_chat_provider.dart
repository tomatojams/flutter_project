import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:pt_mind/models/mqtt_chat_model.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

/// mqtt 채팅 프로바이더
class MqttChatProvider with ChangeNotifier {
  /// 현재 사용자 닉네임
  String _userNickName = "";
  String get userNickName => _userNickName;
  void setUserNickName(String nickName) => _userNickName = nickName;
  // 사용자 프로필
  String _profile = "";
  String get profile => _profile;
  void setProfile(String profile) => _profile = profile;
  // mqtt 서비스
  MqttRepo mqttService = MqttRepo();
  bool _isLoad = false;
  bool get isLoad => _isLoad;

  void _update(bool loadingStatus) {
    _isLoad = loadingStatus;
    notifyListeners();
  }

  /// 유저 리스트
  final List<String> _chatUserList = [];
  List<String> get chatUserList => [..._chatUserList];

  /// 대화 리스트
  final List<MqttChatModel> _chat = [];
  List<MqttChatModel> get chat => [..._chat];
// 대화전송

  void sendChat({required String nickName, required String chat}) {
    // print(nickName);
    // print(chat);

// utf8로 바꾸면 int list로 바뀌기때문에 아래코드들을 수정해야함
// 유저이름도 바꿀수있게 추가수정 필요함

    final chatUtf8 = utf8.encode(chat);
    // print(chatUtf8);
    // print(utf8.runtimeType);
    mqttService.client.publishMessage(
        "CHAT",
        MqttQos.atMostOnce,
        MqttClientPayloadBuilder()
            .addString(
                json.encode({"userNickName": nickName, "chat": chatUtf8}))
            .payload!);
  }

  final String TOPIC_CHAT_JOIN = "CHAT_LIST_JOIN";
  final String TOPIC_CHAT = "CHAT";

  Future<bool> join({required String nickName}) async {
    _update(true);

    // 이경우 string이 들어가야하므로 utf8로 바꾸면 안됨. utf8로 바꾼후 스트링으로 바꾸는 방법이 나음
    // 이경우 패킷이 커진다는 단점이 있음
    // final nickNameUtf8 =  utf8.encode(nickName);
    // final nickNameString = nickNameUtf8.toString();
    // 위와같은 식으로해서 mqtt 통신중에는 utf8을 스트링으로 바꾼걸 사용하면 됨

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

class MqttRepo {
  Future<MqttConnectionState?> connect({required String nickName}) async {
    try {
      client.connectionMessage = MqttConnectMessage()
          .withClientIdentifier(nickName)
          .withWillTopic("JOIN")
          .withWillMessage(nickName)
          .startClean()
          .withWillQos(MqttQos.atMostOnce);
      MqttClientConnectionStatus? status = await client
          .connect()
          .timeout(const Duration(seconds: 3), onTimeout: () async => null);
      if (status == null) return null;
      return status.state;
    } catch (e) {
      return null;
    }
  }

  static MqttServerClient getBase() {
    if (Platform.isAndroid) {
      return MqttServerClient("10.0.2.2", "c"); // 안드로이드 에뮬레이터
    } else if (Platform.isWindows) {
      return MqttServerClient("127.0.0.1", "c"); // 윈도우 앱
    } else {
      return MqttServerClient("127.0.0.1", "c"); // 기본값
    }
  }

  MqttServerClient client = getBase()
    ..port = 1883
    ..setProtocolV311()
    ..keepAlivePeriod = 20
    ..onDisconnected = () {
      print("onDisconnected");
    }
    ..onConnected = () {
      print("onConnected Good");
    }
    ..onSubscribed = (String data) {
      print("data : $data");
    }
    ..pongCallback = () {
      print("pongCallback");
    };

  String parse(List<MqttReceivedMessage<MqttMessage>> event) {
    MqttPublishMessage msg = event[0].payload as MqttPublishMessage;
    return MqttPublishPayload.bytesToStringAsString(msg.payload.message);
  }
}
