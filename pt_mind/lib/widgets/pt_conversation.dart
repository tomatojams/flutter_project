import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PTconv extends StatelessWidget {
  final String conv;
  const PTconv({
    super.key,
    required this.conv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          'assets/PT-profile-chat.svg',
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                conv,
                style: TextStyle(
                  color: Theme.of(context).indicatorColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
