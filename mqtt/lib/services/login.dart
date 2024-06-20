import 'package:flutter/material.dart';
import 'package:mqtt/screens/chat_room.dart';

import 'chat_provider.dart';
import 'user_provider.dart';

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
    print(_controller.text);
    print(_controller.text);
    print(UserProvider().userNickName);
    Navigator.of(context).pushNamed(ChatRoom.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("James MQTT Chat"),
        backgroundColor: const Color(0xFF807FFF),
        centerTitle: true,
      ),
      body: Column(
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
                  color: const Color(0xFF807FFF),
                  textColor: Colors.white,
                  child: const Text(
                    "입장",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async => await _move(context),
                )
        ],
      ),
    );
  }
}
