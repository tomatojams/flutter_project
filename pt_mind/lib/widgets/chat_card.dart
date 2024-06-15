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

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
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
          backgroundColor: Theme.of(context).dialogBackgroundColor,
          textColor: Theme.of(context).scaffoldBackgroundColor,
          fontSize: 14.0,
        );
        // setState(() {
        //   bgcolor = toggle ? Colors.white : const Color(0xFFB7B1DF);
        //   toggle = !toggle;
        // });
      },
      child: Badge(
        largeSize: 15,
        offset: const Offset(-1, -5),
        backgroundColor: widget.badge == null
            ? Colors.transparent
            : Theme.of(context).focusColor,
        label: widget.badge == null ? null : Text(widget.badge.toString()),
        textStyle: const TextStyle(
          color: Colors.white,
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
            borderRadius: BorderRadius.circular(15.0),
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
    );
  }
}
