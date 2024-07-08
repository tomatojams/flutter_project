import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:pt_mind/features/chat/mqtt/chat_screen_mqtt/mqtt_conv_widget.dart';
import 'package:pt_mind/models/mqtt_chat_model.dart';
import 'package:pt_mind/provider/mqtt_chat_provider.dart';
import 'package:pt_mind/utility/mqtt_utf8.dart';
import 'package:pt_mind/constants/gaps.dart';
import '../http/chat_scrren_PT/user_conv_widget.dart';

class MqttChatScreen extends StatefulWidget {
  // static const String path = "/chat/room";
  // final String profile;

  const MqttChatScreen({
    super.key,
  });
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
    // WidgetsBinding.instance.addObserver(this);
    // moveScroll();
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
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController
              .position.minScrollExtent, // 스크롤 최하단이 LivtWiew에서는 min값. 중요
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void _send(provider) {  // provider를 받아와서 사용하면 됨
    final text = _textController.text;
    if (text.isEmpty) {
      return;
    }

    provider.sendChat(nickName: (provider.userNickName), chat: text);

    _textController.clear();
    setState(() {
      moveScroll(); // 초기화후 스크롤이 맨 아래로 가게 추가
    });
  }



  @override
  Widget build(BuildContext context) { 
    return Consumer<MqttChatProvider>(builder: (context, chatProvider, child) { // Consumer로 변경 생성할때 provider를 받아올 필요없음.
      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
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
                Gaps.h20,
                SvgPicture.asset(
                  'assets/logo/PTlogo-small.svg',
                  height: 25.0,
                ),
                Gaps.h64,
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor),
                  child: chatProvider.chat.isEmpty
                      ? Gaps.v28 // 30보다 커지면 에러
                      : ListView.builder(
                          controller: _scrollController,
                          reverse: true,
                          itemCount: chatProvider.chat.length,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final MqttChatModel mqttchatModel =
                                chatProvider.chat[index];
                            final String userNickName =
                                chatProvider.userNickName;
                            if (mqttchatModel.userNickName != userNickName) {
                              // print("mqttchatModel.chat");
                              // print(mqttchatModel.chat);
                              return MqttConv(
                                  isPng: chatProvider.profile.contains('png')
                                      ? true
                                      : false,
                                  profile: chatProvider.profile,
                                  conv: utf8Sample(mqttchatModel.chat));
                            }
                            return UserConv(
                                conv: utf8Sample(mqttchatModel.chat));
                            // return PTconv(conv: utf8Sample(mqttchatModel.chat));
                          },
                        ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: _textController, // 내부 텍스트를 추출하기 위한 컨트롤러
                  focusNode: _focusNode, // 포커스를 유지해서 전송되어도, 키보드가 내려가지 않게 추가
                  // textInputAction: TextInputAction.done, // 완료액션 설정
                  textInputAction: TextInputAction.send, // 전송액션 설정
                  // onChanged: (text) { // 텍스트가 변경될때마다
                  // },
                  onSubmitted: (text) {
                    // 엔터를 누르면 호출되고 그 다음에 onEditingComplete가 호출됨
                    // _send();
                  },
                  onEditingComplete: () {
                    //  포커스를 잃을때 호출되므로 다시 포커스를 요청
                    _send(chatProvider);
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
              ),
            ],
          ),
        ),
      );
    });
  }
}
