import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChatCard extends StatefulWidget {
  final String profile;
  final String imageExt;
  final String titleName;
  final String name;
  final String lastMessage;
  final String beforeTime;

  const ChatCard(
      {super.key,
      required this.profile,
      required this.imageExt,
      required this.titleName,
      required this.name,
      required this.lastMessage,
      required this.beforeTime});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  Color bgcolor = Colors.white;
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Fluttertoast.showToast(
          msg: '${widget.name} 카드 클릭 ',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: const Color(0xFF4645A9).withOpacity(0.8),
          textColor: Colors.white,
          fontSize: 14.0,
        );
        // setState(() {
        //   bgcolor = toggle ? Colors.white : const Color(0xFFB7B1DF);
        //   toggle = !toggle;
        // });
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor,
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
                              style: const TextStyle(
                                  color: Color(0xFF7D3596),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              widget.name,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          widget.beforeTime,
                          style: const TextStyle(
                            color: Color(0xFF696767),
                            fontSize: 11.0,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      widget.lastMessage,
                      style: const TextStyle(
                        color: Color(0xFF696767),
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
    );
  }
}
