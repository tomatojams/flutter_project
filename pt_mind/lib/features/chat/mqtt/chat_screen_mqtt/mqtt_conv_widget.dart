import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MqttConv extends StatelessWidget {
  final String conv;
  final String profile;
  final bool isPng;
  const MqttConv({
    super.key,
    required this.conv,
    required this.profile,
    required this.isPng,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isPng
                ? Image.asset(
                    profile,
                    width: 40,
                  )
                : SvgPicture.asset(
                    profile,
                    width: 40,
                  ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ConstrainedBox(
                  // 동적 조정하는 텍스트 바로 위에 ContraindBox를 지정해야만 함
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.66,
                  ),
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
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
