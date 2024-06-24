import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/features/authentication/provider/auth_provider.dart';
import 'package:pt_mind/models/chat_lobby_model.dart';
import 'package:pt_mind/features/chatting/http/pt_room_card.dart';
import 'package:pt_mind/services/api_service.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pt_mind/features/chatting/mqtt/provider/mqtt_chat_provider.dart';
import 'package:pt_mind/features/chatting/mqtt/provider/mqtt_user_provider.dart';
import 'package:pt_mind/features/chatting/mqtt/mqtt_room_card.dart';

import '../../models/ramdom_chat_room.dart';
import '../utility/animated_popup.dart';
import 'http/random_room_card.dart';

class ChatLobbyScreen extends StatefulWidget {
  static const String path = "/lobby";
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

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = Provider.of<ChatProvider>(context);
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    // 가입을 마쳤다면 팝업창 띄우기 provider로 정보를 가져옴
    if (context.watch<AuthProvider>().userRegister == true) {
      context.read<AuthProvider>().clearUserRegister();
      showPopup(context);
    }

    return RefreshConfiguration(
      headerBuilder: () => const WaterDropMaterialHeader(),
      footerBuilder: () => const ClassicFooter(),
      headerTriggerDistance: 80.0,
      maxOverScrollExtent: 100.0,
      maxUnderScrollExtent: 0.0,
      // enableScrollWhenRefreshCompleted: true,
      // enableLoadingWhenFailed: true,
      // enableBallisticLoad: true,
      child: SmartRefresher(
        // 풀다운하면 리프레쉬
        controller: widget._refreshController,
        enablePullDown: true,

        // enablePullUp: true,

        // header: const WaterDropMaterialHeader(), // 로딩모양
        onRefresh: () {
          setState(() {
            chat = ApiService.getChatRoomList();
            randomChat = ApiService.getRandomChatRoom();
            widget._refreshController.refreshCompleted();
          });
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    const PtRoomCard(
                      name: 'P.T',
                      titleName: '뉴럴.안내',
                      lastMessage: '당신에게 알맞은 상담사를 찾아드려요.',
                      imageExt: 'svg',
                      profile: 'assets/profile/PT-profile.svg',
                      beforeTime: '10분전',
                      badge: 1,
                    ),
                    FutureBuilder(
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
                                      userProvider: userProvider),
                              ],
                            );
                          }
                          return const SizedBox(
                            height: 28,
                          );
                        }),
                    FutureBuilder(
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
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
