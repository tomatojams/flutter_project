import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/pt_conv_cart.dart';
import 'package:pt_mind/widgets/user_conv_card.dart';
import 'package:pt_mind/models/mqtt_chat_model.dart';
import 'package:pt_mind/services/mqtt_chat_provider.dart';
import 'package:pt_mind/services/mqtt_user_provider.dart';
import 'package:pt_mind/utiliy/utf8.dart';

class MqttChatScreen extends StatefulWidget {
  static const String path = "/chat/room";
  final ChatProvider chatProvider;
  final UserProvider userProvider;

  const MqttChatScreen(
      {super.key, required this.chatProvider, required this.userProvider});
  @override
  State<MqttChatScreen> createState() => _ChatScreenState();
}

// 수정된 부분 시작
class _ChatScreenState extends State<MqttChatScreen>
    with WidgetsBindingObserver {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  List<Map<String, String>> chatdata = [];
  // userProvider.setUserNickName(userId);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    moveScroll();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _scrollController.dispose();
    _textController.dispose();
    _focusNode.dispose(); // 입력되어도 키보드가 내려가지 않게 추가
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    if (bottomInset > 0.0) {
      moveScroll();
    }
  }

  void moveScroll() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInQuad,
      );
    });
  }

  void _send() {
    final text = _textController.text;
    if (text.isEmpty) {
      return;
    }

    widget.chatProvider
        .sendChat(nickName: (widget.userProvider.userNickName), chat: text);

    _textController.clear();
    setState(() {
      moveScroll(); // 초기화후 스크롤이 맨 아래로 가게 추가
    });
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              'assets/logo/PTlogo-small.svg',
              height: 25.0,
            ),
            const SizedBox(
              width: 70,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus(); // 본문 스크롤을 탭하면 키보드 내리기
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: widget.chatProvider.chat.isEmpty
                    ? const SizedBox(
                        height: 30,
                      )
                    : ListView.builder(
                        controller: _scrollController,
                        reverse: true,
                        itemCount: widget.chatProvider.chat.length,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final MqttChatModel mqttchatModel =
                              widget.chatProvider.chat[index];
                          final String userNickName =
                              widget.userProvider.userNickName;
                          if (mqttchatModel.userNickName != userNickName) {
                            // print("mqttchatModel.chat");
                            // print(mqttchatModel.chat);
                            return PTconv(conv: utf8Sample(mqttchatModel.chat));
                            // return PTconv(conv: utf8.decode( utf8.encode(mqttchatModel.chat)));

                          }
                          return UserConv(conv: utf8Sample(mqttchatModel.chat));
                    
                        },
                      ),
              ),
            ),
          ),
          TextField(
            controller: _textController, // 내부 텍스트를 추출하기 위한 컨트롤러
            focusNode: _focusNode, // 포커스를 유지해서 전송되어도, 키보드가 내려가지 않게 추가
            // textInputAction: TextInputAction.done, // 완료액션 설정
            textInputAction: TextInputAction.send, // 전송액션 설정
            // onChanged: (text) { // 텍스트가 변경될때마다
            // },
            onSubmitted: (text) {
              // 엔터를 누르면 호출되고 그 다음에 onEditingComplete가 호출됨
              _send();
            },
            onEditingComplete: () {
              //  포커스를 잃을때 호출되므로 다시 포커스를 요청
              _focusNode.requestFocus(); //
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
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                  color: Theme.of(context)
                      .primaryColor, // 포커스가 되었을 때의 borderSide 색상 설정
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
                  // _send(); // 아이콘 클릭시에도 전송이 되게
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
