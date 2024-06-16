import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: SvgPicture.asset(
              'assets/personal-menu-pic.svg',
              fit: BoxFit.fitWidth,
            )),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProgrmaIcon(
                    icon: 'assets/program/명상.png',
                    title: '명상',
                  ),
                  ProgrmaIcon(
                    icon: 'assets/program/사회성.png',
                    title: '사회성',
                  ),
                  ProgrmaIcon(
                    icon: 'assets/program/판단력.png',
                    title: '판단력',
                  ),
                  ProgrmaIcon(
                    icon: 'assets/program/자신감.png',
                    title: '자신감',
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProgrmaIcon(
                    icon: 'assets/program/연애감정.png',
                    title: '연애감정',
                  ),
                  ProgrmaIcon(
                    icon: 'assets/program/마음치유.png',
                    title: '마음치유',
                  ),
                  ProgrmaIcon(
                    icon: null,
                    title: null,
                  ),
                  ProgrmaIcon(
                    icon: null,
                    title: null,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProgrmaIcon extends StatelessWidget {
  final String? icon;
  final String? title;
  const ProgrmaIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0,
      height: 84.0,
      child: Column(
        children: [
          icon != null
              ? Image.asset(
                  icon!,
                  height: 60,
                  scale: 0.25,
                )
              : const SizedBox(
                  height: 60,
                ),
          const SizedBox(
            height: 2.0,
          ),
          title != null
              ? Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).indicatorColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              : const SizedBox(
                  height: 14.0,
                ),
        ],
      ),
    );
  }
}
