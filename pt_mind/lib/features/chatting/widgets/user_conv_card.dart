import 'package:flutter/material.dart';

class UserConv extends StatelessWidget {
  final String conv;
  const UserConv({
    super.key,
    required this.conv,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: ConstrainedBox(
                  // 동적 조정하는 바로 위에 지정해야만 함
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    conv,
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
