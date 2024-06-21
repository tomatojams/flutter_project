import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/screens/pt_chat_screen.dart';


class ChatCard extends StatelessWidget {
  final String profile;
  final String imageExt;
  final String titleName;
  final String name;
  final String lastMessage;
  final String beforeTime;
  final int? badge;

  const ChatCard(
      {super.key,
      required this.profile,
      required this.imageExt,
      required this.titleName,
      required this.name,
      required this.lastMessage,
      required this.beforeTime,
      this.badge});

  // Color bgcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(),
                // builder: (context) => const MqttChatScreen(mqtt_chat_provider: , userProvider: userProvider),
              ),
            );

            // Fluttertoast.showToast(
            //   msg: '${widget.name} 카드 클릭 ',
            //   toastLength: Toast.LENGTH_SHORT,
            //   gravity: ToastGravity.CENTER,
            //   timeInSecForIosWeb: 1,
            //   backgroundColor: Theme.of(context).dialogBackgroundColor,
            //   textColor: Theme.of(context).scaffoldBackgroundColor,
            //   fontSize: 14.0,
            // );
            // setState(() {
            //   bgcolor = const Color(0xFFB7B1DF);
            //   sleep(const Duration(milliseconds: 100));
            //   bgcolor = Colors.white;
            // });
          },
          child: Badge(
            largeSize: 15,
            offset: const Offset(-1, -5),
            backgroundColor: badge == null
                ? Colors.transparent
                : Theme.of(context).focusColor,
            label: badge == null ? null : Text(badge.toString()),
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
                  horizontal: 12.0,
                  vertical: 15.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imageExt == 'svg'
                        ? SvgPicture.asset(profile)
                        : Image.asset(
                            profile,
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
                                    titleName,
                                    style: TextStyle(
                                        color: Theme.of(context).focusColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 3.0),
                                  Text(
                                    name,
                                    style: TextStyle(
                                        color: Theme.of(context).indicatorColor,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                beforeTime,
                                style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            lastMessage,
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
