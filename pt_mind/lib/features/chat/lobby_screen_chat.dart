import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/provider/auth_provider.dart';
import 'package:pt_mind/models/chat_lobby_model.dart';
import 'package:pt_mind/features/chat/room_card_PT.dart';
import 'package:pt_mind/services/api_service.dart';
import 'package:pt_mind/utility/custum_toast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pt_mind/provider/mqtt_chat_provider.dart';
import 'package:pt_mind/features/chat/room_card_mqtt.dart';

import '../../constants/gaps.dart';
import '../../models/ramdom_chat_room.dart';
import '../../utility/animated_popup.dart';
import '../../utility/animated_popupLogin.dart';
import 'room_card_random.dart';

/// 채팅 로비 화면
class ChatLobbyScreen extends StatefulWidget {
  // static const String path = "/lobby";
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  ChatLobbyScreen({
    super.key,
  });

  @override
  State<ChatLobbyScreen> createState() => _ChatLobbyScreenState();
}

class _ChatLobbyScreenState extends State<ChatLobbyScreen> {
  Future<List<ChatLobbyModel>>? chat = ApiService.getChatRoomList();
  Future<RandomChatRoom>? randomChat = ApiService.getRandomChatRoom();
  final userId = 'tomato';

  @override
  void initState() {
    super.initState();
  }

// context.watch라고 써야지 watch()를 쓰면 에러가 남

  void _onRefresh() {
    setState(() {
      chat = ApiService.getChatRoomList();
      randomChat = ApiService.getRandomChatRoom();
      widget._refreshController.refreshCompleted();
    });
  }

  @override
  Widget build(BuildContext context) {
    final MqttChatProvider chatProvider =
        Provider.of<MqttChatProvider>(context);

    // 가입을 마쳤다면 팝업창 띄우기 provider로 정보를 가져옴
    if (context.watch<AuthProvider>().userRegister == true) {
      context.read<AuthProvider>().clearUserRegister();
      showPopup(context);
    }
    // 로그인후 팝업창 provider 가져오고 수정
    if (context.watch<AuthProvider>().userLogin == true) {
      context.read<AuthProvider>().clearUserLogin();
      // 토스트 메시지
      toastMessage(context);
    }

    return RefreshConfiguration(
      maxOverScrollExtent: 100.0,
      maxUnderScrollExtent: 30.0,
      child: SmartRefresher(
        header: const WaterDropMaterialHeader(), // 로딩모양

        controller: widget._refreshController,
        enablePullDown: true,

        // enablePullUp: true,

        onRefresh: _onRefresh,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: [
            const PtRoomCard(
              // PT 채팅방
              name: 'P.T',
              titleName: '뉴럴.안내',
              lastMessage: '당신에게 알맞은 상담사를 찾아드려요.',
              imageExt: 'svg',
              profile: 'assets/profile/PT-profile.svg',
              beforeTime: '10분전',
              badge: 1,
            ),
            FutureBuilder(
                // MQTT 채팅방
                future: chat,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var chatRoom in snapshot.data!)
                          MqttChatCard(
                            profile: chatRoom.profile,
                            imageExt: chatRoom.imageExt,
                            titleName: chatRoom.titleName,
                            name: chatRoom.name,
                            lastMessage: chatRoom.lastMessage,
                            beforeTime: chatRoom.beforeTime,
                            badge: chatRoom.badge,
                            chatProvider: chatProvider,
                          ),
                      ],
                    );
                  }
                  return const SizedBox(
                    height: 28,
                  );
                }),
            FutureBuilder(
                // 랜덤 채팅방
                future: randomChat,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        RandomRoomCard(
                          profile: snapshot.data!.profile,
                          imageExt: snapshot.data!.imageExt,
                          titleName: snapshot.data!.titleName,
                          name: snapshot.data!.name,
                          lastMessage: snapshot.data!.lastMessage,
                          beforeTime: snapshot.data!.beforeTime,
                          badge: snapshot.data?.badge,
                        ),
                      ],
                    );
                  }
                  return const SizedBox(
                    height: 28,
                  );
                }),
            const PtRoomCard(
              // PT 채팅방
              name: 'P.T',
              titleName: '뉴럴.안내',
              lastMessage: '당신에게 알맞은 상담사를 찾아드려요.',
              imageExt: 'svg',
              profile: 'assets/profile/PT-profile.svg',
              beforeTime: '10분전',
              badge: 1,
            ),
            FutureBuilder(
                // MQTT 채팅방
                future: chat,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var chatRoom in snapshot.data!)
                          MqttChatCard(
                            profile: chatRoom.profile,
                            imageExt: chatRoom.imageExt,
                            titleName: chatRoom.titleName,
                            name: chatRoom.name,
                            lastMessage: chatRoom.lastMessage,
                            beforeTime: chatRoom.beforeTime,
                            badge: chatRoom.badge,
                            chatProvider: chatProvider,
                          ),
                      ],
                    );
                  }
                  return const SizedBox(
                    height: 28,
                  );
                }),
            FutureBuilder(
                // 랜덤 채팅방
                future: randomChat,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        RandomRoomCard(
                          profile: snapshot.data!.profile,
                          imageExt: snapshot.data!.imageExt,
                          titleName: snapshot.data!.titleName,
                          name: snapshot.data!.name,
                          lastMessage: snapshot.data!.lastMessage,
                          beforeTime: snapshot.data!.beforeTime,
                          badge: snapshot.data?.badge,
                        ),
                      ],
                    );
                  }
                  return const SizedBox(
                    height: 28,
                  );
                }),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> toastMessage(BuildContext context) {
    return Future.delayed(const Duration(milliseconds: 300), () {
      Fluttertoast.showToast(
        msg: '로그인 되었습니다.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: const Color(0xFF4645A9).withOpacity(0.8),
        textColor: const Color(0xFFF8F2F5),
        fontSize: 14.0,
      );
    });
  }
}
