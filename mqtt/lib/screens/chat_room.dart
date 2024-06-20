import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import '../services/chat_provider.dart';
import '../services/user_provider.dart';

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
    print("providercheck");
    print(widget.userProvider.userNickName);
    return Scaffold(
      appBar: AppBar(
        title: const Text("채팅"),
        backgroundColor: const Color(0xFF807FFF),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
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
                                          margin:
                                              const EdgeInsets.only(top: 10.0),
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
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
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
                        : ListView(
                            shrinkWrap: true,
                            children: widget.chatProvider.chatUserList
                                .map<Widget>((String userNickName) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      " - $userNickName",
                                    )))
                                .toList(),
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
    print(widget.userProvider.userNickName);
    print(_tc.text);
    widget.chatProvider
        .sendChat(nickName: (widget.userProvider.userNickName), chat: _tc.text);
    _tc.clear();
  }
}
