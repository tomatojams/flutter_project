import 'package:flutter/material.dart';
import 'package:pt_mind/widgets/chat_card.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            child: Column(
              children: [
                ChatCard(
                  name: 'P.T',
                  titleName: '뉴럴.안내',
                  lastMessage: '당신에게 알맞은 상담사를 찾아드려요.',
                  imageExt: 'svg',
                  profile: 'assets/profile/PT-profile.svg',
                  beforeTime: '10분전',
                  badge: 1,
                ),
                SizedBox(
                  height: 15.0,
                ),
                ChatCard(
                  name: '나미선',
                  titleName: '해피매직',
                  lastMessage: '다음에 뵙겠습니다. 감사했어요',
                  imageExt: 'png',
                  profile: 'assets/profile/Namisun-profile.png',
                  beforeTime: '3시간전',
                  badge: null,
                ),
                SizedBox(
                  height: 15.0,
                ),
                ChatCard(
                  name: '이다민',
                  titleName: '틴에이저 트레이너',
                  lastMessage: '오늘도 화이팅!',
                  imageExt: 'png',
                  profile: 'assets/profile/Damin-profile.png',
                  beforeTime: '2주전',
                  badge: null,
                ),
                SizedBox(
                  height: 15.0,
                ),
                ChatCard(
                  name: '매니저',
                  titleName: 'P.Tmind',
                  lastMessage: '신청하신 상담을 안내해 드립니다.',
                  imageExt: 'svg',
                  profile: 'assets/profile/manager-profile.svg',
                  beforeTime: '1일전',
                  badge: null,
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          )),
    );
  }
}
