import 'package:flutter/material.dart';
import 'package:pt_mind/widgets/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: const BoxDecoration(color: Color(0xFFF8F2F5)),
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
                  description: '당신에게 알맞은 상담사를 찾아드려요.',
                  imageExt: 'svg',
                  icon: 'assets/PT-profile.svg',
                ),
                SizedBox(
                  height: 15.0,
                ),
                ChatCard(
                  name: '나미선',
                  titleName: '해피매직',
                  description: '다음에 뵙겠습니다. 감사했어요',
                  imageExt: 'png',
                  icon: 'assets/Namisun.png',
                ),
                SizedBox(
                  height: 15.0,
                ),
                ChatCard(
                  name: '매니저',
                  titleName: 'P.Tmind',
                  description: '신청하신 상담을 안내해 드립니다.',
                  imageExt: 'svg',
                  icon: 'assets/manager-profile.svg',
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
