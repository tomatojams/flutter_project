import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/screens/ai_chat_screen.dart';
import 'package:pt_mind/screens/mqtt_chat_screen.dart';
import 'package:pt_mind/services/mqtt_chat_provider.dart';
import 'package:pt_mind/services/mqtt_user_provider.dart';

class MqttChatCard extends StatefulWidget {
  static const String path = "/card";
  final ChatProvider chatProvider;
  final UserProvider userProvider;
  final String profile;
  final String imageExt;
  final String titleName;
  final String name;
  final String lastMessage;
  final String beforeTime;
  final int? badge;

  const MqttChatCard(
      {super.key,
      required this.profile,
      required this.imageExt,
      required this.titleName,
      required this.name,
      required this.lastMessage,
      required this.beforeTime,
      this.badge,
      required this.chatProvider,
      required this.userProvider});

  @override
  State<MqttChatCard> createState() => _MqttChatCardState();
}

class _MqttChatCardState extends State<MqttChatCard> {
  final userId = 'a1234'; //http용 수정해야함

  // Color bgcolor = Colors.white;

  Future<void> _move(BuildContext context) async {
    final bool connectCheck = await widget.chatProvider.join(nickName: userId);
    print(connectCheck);
    if (!connectCheck) {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text("연결 오류"),
                actions: [
                  TextButton(
                    child: const Text("닫기"),
                    onPressed: () => Navigator.of(context).pop(null),
                  )
                ],
              ));
      return;
    }
    print('mqtt chat card move');
    widget.userProvider.setUserNickName(userId);
    print("before move check");
    print(widget.userProvider.userNickName);
    widget.chatProvider.sendChat(
        nickName: (widget.userProvider.userNickName), chat: 'before message');
    Navigator.of(context).pushNamed(MqttChatScreen.path);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            await _move(context);
          },
          child: Badge(
            largeSize: 15,
            offset: const Offset(-1, -5),
            backgroundColor: widget.badge == null
                ? Colors.transparent
                : Theme.of(context).focusColor,
            label: widget.badge == null ? null : Text(widget.badge.toString()),
            textStyle: TextStyle(
              color: Theme.of(context).cardColor,
              fontSize: 12.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).shadowColor,
                    spreadRadius: 0.5,
                    blurRadius: 3,
                    offset: const Offset(0, 0),
                  ),
                ],
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.imageExt == 'svg'
                        ? SvgPicture.asset(widget.profile)
                        : Image.asset(
                            widget.profile,
                            width: 60.0,
                            height: 60.0,
                            scale: 0.25,
                          ),
                    const SizedBox(width: 25.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.titleName,
                                    style: TextStyle(
                                        color: Theme.of(context).focusColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 3.0),
                                  Text(
                                    widget.name,
                                    style: TextStyle(
                                        color: Theme.of(context).indicatorColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                widget.beforeTime,
                                style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            widget.lastMessage,
                            style: TextStyle(
                              color: Theme.of(context).hintColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
