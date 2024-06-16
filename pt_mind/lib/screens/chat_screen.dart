import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/pt_conversation.dart';
import 'package:pt_mind/widgets/user_conversation.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/backButton.svg',
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
            'assets/PTlogo-small.svg',
            height: 25.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    children: [
                      PTconv(
                        conv: '안녕하세요. P.T입니다.\n오늘은 비가 오고있지 않나요? 수빈님의 마음은 어떠세요?',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      UserConv(
                        conv:
                            '네 정말 오늘은 비가 오고 있네요. 마음이 우울해서 대화하고싶었어요. 어떻게 해야할까요?',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      PTconv(
                        conv: '어떤일로 우울하신지 자세히 알려주실 수 있을까요?',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      UserConv(
                        conv:
                            '애인과 싸웠어요. 잊고싶은 일인데 계속해서 머릭에 떠올라요. 어리다고 저를 무시했어요.',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      PTconv(
                        conv:
                            '그런 상황이셨군요. 무시당하는 느낌은 정말로 힘들어요. 그런상황에서 어떤감정을 느끼셨는지 말씀해주실 수 있을까요?',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              iconColor: Theme.of(context).cardColor,
              fillColor: Theme.of(context).cardColor,
              border: const OutlineInputBorder(),
              hintText: '메시지를 입력하세요',
              suffixIcon: IconButton(
                icon: SvgPicture.asset(
                  'assets/sendIcon.svg',
                  height: 30,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
