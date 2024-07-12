import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/personal/widgets/program_icon.dart';
import 'package:pt_mind/constants/gaps.dart';

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
          Gaps.v10,
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
                Gaps.v20,
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
                Gaps.v64,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo/facebook.png',
                      width: 21,
                    ),
                    Gaps.h10,
                    Image.asset(
                      'assets/logo/insta.png',
                      width: 22,
                    ),
                    Gaps.h28,
                  ],
                ),
              ],
            ),
          ),
          Gaps.v10,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0,
                  child: SvgPicture.asset(
                    'assets/line/hLine400.svg',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
                const InfoPersonal(
                  text: "정보변경",
                ),
                const InfoPersonal(
                  text: "공지사항",
                ),
                const InfoPersonal(
                  text: "고객센터",
                ),
                const InfoPersonal(
                  text: "환경설정",
                ),
                Gaps.v10,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoPersonal extends StatelessWidget {
  final String text;
  const InfoPersonal({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                  style: const TextStyle(
                    // color: Theme.of(context).indicatorColor,
                    fontSize: 16.0,
                    // fontWeight: FontWeight.w600,
                  )),
              SvgPicture.asset(
                'assets/line/arrow_back.svg',
                width: 18,
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: SvgPicture.asset(
            'assets/line/hLine400.svg',
            width: MediaQuery.of(context).size.width * 0.79,
          ),
        ),
      ],
    );
  }
}
