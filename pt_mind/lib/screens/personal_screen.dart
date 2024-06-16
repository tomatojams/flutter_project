import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/program_icon.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({
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
                'assets/personal-menu-pic.svg',
                fit: BoxFit.fitWidth,
              )),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                const Row(
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
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
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
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo/facebook.png',
                      width: 21,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Image.asset(
                      'assets/logo/insta.png',
                      width: 22,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
