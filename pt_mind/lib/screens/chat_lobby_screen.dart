import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/models/chat_lobby_model.dart';
import 'package:pt_mind/widgets/chat_card.dart';
import 'package:pt_mind/services/api_service.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:pt_mind/services/mqtt_chat_provider.dart';
import 'package:pt_mind/services/mqtt_user_provider.dart';
import 'package:pt_mind/widgets/mqtt_chat_card.dart';


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
  final userId = 'tomato';

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = Provider.of<ChatProvider>(context);
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return SmartRefresher(
      // 풀다운하면 리프레쉬
      controller: widget._refreshController,
      enablePullDown: true,
      // enablePullUp: true,

      header: const WaterDropMaterialHeader(), // 로딩모양
      onRefresh: () {
        setState(() {
          chat = ApiService.getChatRoomList();
          widget._refreshController.refreshCompleted();
        });
      },
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
            decoration:
                BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              child: Column(
                children: [
                  const ChatCard(
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
                          height: 30,
                        );
                      }),
                ],
              ),
            )),
      ),
    );
  }
}
