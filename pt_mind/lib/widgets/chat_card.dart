import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
  final String icon;
  final String imageExt;
  final String titleName;
  final String name;
  final String description;

  const ChatCard({
    super.key,
    required this.icon,
    required this.imageExt,
    required this.titleName,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        child: Row(
          children: [
            imageExt == 'svg' ? SvgPicture.asset(icon) : Image.asset(icon),
            const SizedBox(width: 25.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      titleName,
                      style: const TextStyle(
                          color: Color(0xFF7D3596),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 3.0),
                    Text(
                      name,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFF696767),
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
