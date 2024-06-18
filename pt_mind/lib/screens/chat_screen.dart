import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/pt_conversation.dart';
import 'package:pt_mind/widgets/user_conversation.dart';
import 'package:pt_mind/services/api_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final userId = 'a1234';
  final ScrollController _scrollController = ScrollController();
  List<Map<String, String>> chatdata = [


  ];
  final Future<String> chat = ApiService.getChatAll();

  final TextEditingController _textController = TextEditingController();

  void moveScroll(value) {
    _scrollController.animateTo(value.toDouble() + 100,
        duration: const Duration(milliseconds: 100), curve: Curves.ease);
  }

  void _submitText() async {
    final text = _textController.text;
    if (text.isEmpty) {
      return;
    }
    chatdata.add({"user": text});
    _textController.clear();
    setState(() {});
    moveScroll(_scrollController.position.maxScrollExtent);
    String answer = await ApiService.postChat(userId, text);

    chatdata.add({"pt": answer.toString()});

    setState(() {});
    moveScroll(_scrollController.position.maxScrollExtent);

    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/backButton.svg',
            height: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: SvgPicture.asset(
            'assets/logo/PTlogo-small.svg',
            height: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus(); // 키보드 내리기
              },
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      children: [
                        FutureBuilder(
                          future: chat,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return PTconv(
                                conv: snapshot.data!,
                              );
                            } else {
                              return CircularProgressIndicator(
                                color: Theme.of(context).primaryColorLight,
                              );
                            }
                          },
                        ),
                        for (var i = 0; i < chatdata.length; i++)
                          if (chatdata[i].containsKey("user"))
                            UserConv(
                              conv: chatdata[i]["user"]!,
                            )
                          else
                            PTconv(
                              conv: chatdata[i]["pt"]!,
                            )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: TextField(
              controller: _textController,
              onChanged: (text) {
                _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease);
              },
              onSubmitted: (text) {
                moveScroll(_scrollController.position.maxScrollExtent);
              },
              decoration: InputDecoration(
                iconColor: Theme.of(context).cardColor,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                fillColor: Theme.of(context).cardColor,
                border: const OutlineInputBorder(),
                hintText: '메시지를 입력하세요',
                suffixIcon: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icon/sendIcon.svg',
                    height: 30,
                  ),
                  onPressed: () {
                    _submitText();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
