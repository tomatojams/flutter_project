import 'package:flutter/material.dart';
import 'package:pt_mind/models/chat_room_model.dart';
import 'package:pt_mind/widgets/chat_card.dart';
import 'package:pt_mind/services/api_service.dart';

class ChatRoomScreen extends StatelessWidget {
  final Future<List<ChatRoomModel>> chat = ApiService.getChatRoomList();
  // 비동기 Future로 데이타를 못받아와도 다음코드 실행가능
  // final로 재할당 되지 않음. 코드의 안정성을 높임.
  ChatRoomScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                FutureBuilder(future: chat, builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var chatRoom in snapshot.data!)
                          ChatCard(
                            name: chatRoom.name,
                            titleName: chatRoom.titleName,
                            lastMessage: chatRoom.lastMessage,
                            imageExt: chatRoom.imageExt,
                            profile: chatRoom.profile,
                            beforeTime: chatRoom.beforeTime,
                            badge: chatRoom.badge,
                          )
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                
                })
              ],
            ),
          )),
    );
  }
}
