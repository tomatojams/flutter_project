import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:provider/provider.dart';

void main() => runApp(const System());

class System extends StatelessWidget {
  const System({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(
            create: (BuildContext _) => ChatProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (BuildContext _) => UserProvider())
      ],
      child: MaterialApp(
        onGenerateRoute: (RouteSettings route) {
          if (route.name == ChatRoom.path) {
            return MaterialPageRoute(
                settings: const RouteSettings(name: ChatRoom.path),
                builder: (BuildContext context) {
                  ChatProvider chatProvider =
                      Provider.of<ChatProvider>(context);
                  UserProvider userProvider =
                      Provider.of<UserProvider>(context);
                  return ChatRoom(
                    chatProvider: chatProvider,
                    userProvider: userProvider,
                  );
                });
          }
          return MaterialPageRoute(
              settings: const RouteSettings(name: Login.path),
              builder: (BuildContext context) {
                ChatProvider chatProvider = Provider.of<ChatProvider>(context);
                UserProvider userProvider = Provider.of<UserProvider>(context);
                return Login(
                    chatProvider: chatProvider, userProvider: userProvider);
              });
        },
      ),
    );
  }
}

class Login extends StatefulWidget {
  static const String path = "/login";
  final ChatProvider chatProvider;
  final UserProvider userProvider;
  const Login(
      {Key? key, required this.chatProvider, required this.userProvider})
      : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("James MQTT Chat"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: "닉네임", border: InputBorder.none),
              ),
            ),
            widget.chatProvider.isLoad
                ? const Text("Loading")
                : MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text(
                      "입장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async => await _move(context),
                  )
          ],
        ),
      ),
    );
  }

  Future<void> _move(BuildContext context) async {
    if (_controller.text.isEmpty) {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("닉네임을 입력해주세요"),
                actions: [
                  TextButton(
                    child: const Text("닫기"),
                    onPressed: () => Navigator.of(context).pop(null),
                  )
                ],
              ));
      return;
    }
    final bool connectCheck =
        await widget.chatProvider.join(nickName: _controller.text);
    if (!connectCheck) {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("연결 오류"),
                actions: [
                  TextButton(
                    child: const Text("닫기"),
                    onPressed: () => Navigator.of(context).pop(null),
                  )
                ],
              ));
      return;
    }
    widget.userProvider.setUserNickName(_controller.text);
    Navigator.of(context).pushNamed(ChatRoom.path);
  }
}

class ChatRoom extends StatefulWidget {
  static const String path = "/chat/room";
  final ChatProvider chatProvider;
  final UserProvider userProvider;
  const ChatRoom(
      {Key? key, required this.chatProvider, required this.userProvider})
      : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final ScrollController _sc = ScrollController();
  final FocusNode _fn = FocusNode();
  final TextEditingController _tc = TextEditingController();
  bool isOpen = false;
  @override
  void dispose() {
    _sc.dispose();
    _fn.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("채팅"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: widget.chatProvider.chat.isEmpty
                      ? Container()
                      : ListView.builder(
                          controller: _sc,
                          reverse: true,
                          itemCount: widget.chatProvider.chat.length,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          itemBuilder: (BuildContext context, int index) {
                            final Size size = MediaQuery.of(context).size;
                            final ChatModel chatModel =
                                widget.chatProvider.chat[index];
                            final String userNickName =
                                widget.userProvider.userNickName;
                            if (chatModel.userNickName != userNickName) {
                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0, horizontal: 20.0),
                                        child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 10.0),
                                            child: Text.rich(
                                              TextSpan(children: [
                                                TextSpan(
                                                  text:
                                                      "${chatModel.userNickName} : ",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(text: chatModel.chat)
                                              ]),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Card(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20.0, horizontal: 20.0),
                                      alignment: Alignment.centerLeft,
                                      child: Text(chatModel.chat),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                )),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.only(left: 20.0),
                              decoration: BoxDecoration(border: Border.all()),
                              child: TextField(
                                autofocus: true,
                                focusNode: _fn,
                                controller: _tc,
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                onSubmitted: (String _) => _send(),
                              ))),
                      IconButton(onPressed: _send, icon: const Icon(Icons.send))
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Card(
              elevation: 5.0,
              margin: EdgeInsets.zero,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "참가자 : ${widget.chatProvider.chatUserList.length}명",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () => setState(() => isOpen = !isOpen),
                            icon: Icon(!isOpen
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up)),
                      ],
                    ),
                    !isOpen
                        ? Container()
                        : Container(
                            child: ListView(
                              shrinkWrap: true,
                              children: widget.chatProvider.chatUserList
                                  .map<Widget>((String userNickName) =>
                                      Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          padding: const EdgeInsets.all(20.0),
                                          child: Text(
                                            " - $userNickName",
                                          )))
                                  .toList(),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _send() {
    _fn.unfocus();
    if (_tc.text.isEmpty) return;
    widget.chatProvider
        .sendChat(nickName: (widget.userProvider.userNickName), chat: _tc.text);
    _tc.clear();
  }
}

class ChatProvider with ChangeNotifier {
  MqttRepo mqttService = MqttRepo();
  bool _isLoad = false;
  bool get isLoad => _isLoad;

  void _update(bool loadingStatus) {
    _isLoad = loadingStatus;
    notifyListeners();
  }

  final List<String> _chatUserList = [];
  List<String> get chatUserList => [..._chatUserList];

  final List<ChatModel> _chat = [];
  List<ChatModel> get chat => [..._chat];

  void sendChat({required String nickName, required String chat}) =>
      mqttService.client.publishMessage(
          "CHAT",
          MqttQos.atMostOnce,
          MqttClientPayloadBuilder()
              .addString(json.encode({"userNickName": nickName, "chat": chat}))
              .payload!);

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
        final ChatModel chatModel = ChatModel.json(json);
        _chat.insert(0, chatModel);
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

class UserProvider with ChangeNotifier {
  String _userNickName = "";
  String get userNickName => _userNickName;
  void setUserNickName(String nickName) => _userNickName = nickName;
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
          .timeout(const Duration(seconds: 5), onTimeout: () async => null);
      if (status == null) return null;
      return status.state;
    } catch (e) {
      return null;
    }
  }

  MqttServerClient client = MqttServerClient("127.0.0.1", "c")
    ..port = 3000
    ..setProtocolV311()
    ..keepAlivePeriod = 20
    ..onDisconnected = () {
      print("onDisconnected");
    }
    ..onConnected = () {
      print("onConnected");
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

class ChatModel {
  final String userNickName;
  final String chat;
  const ChatModel({required this.userNickName, required this.chat});
  factory ChatModel.json(Map<String, dynamic> json) => ChatModel(
      userNickName: json['userNickName'].toString(),
      chat: json['chat'].toString());
}
