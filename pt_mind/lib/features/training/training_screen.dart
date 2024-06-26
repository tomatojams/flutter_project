import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TraingScreen extends StatelessWidget {
  const TraingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: SvgPicture.asset(
                'assets/game2.svg',
                fit: BoxFit.fitWidth,
              )),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/program/판단력.png',
              height: 70,
              scale: 0.25,
            ),
          )
        ],
      ),
    );
  }
}
