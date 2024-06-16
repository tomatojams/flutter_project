import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/widgets/favorite_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 15.0,
              bottom: 5.0,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      '트레이너',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Theme.of(context).focusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icon/underline.svg',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '프로그램',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).hintColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0,
                  ),
                  child: Column(
                    children: [
                      FavoriteCard(
                        name: '박진주',
                        titleName: '소울힐러',
                        slogan: '마음의 H.P를 꽉꽉 채워드립니다.',
                        profile: 'assets/profile/Parkjinju-profile.png',
                        description1: '심리상담사 2급',
                        description2: '3년차 상담사',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      FavoriteCard(
                        name: '나미선',
                        titleName: '해피매직',
                        slogan: '행복의 기적을 찾아갑니다.',
                        profile: 'assets/profile/Namisun-profile.png',
                        description1: '심리상담사 1급',
                        description2: '15년차 베테랑',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      FavoriteCard(
                        name: '이다민',
                        titleName: '틴에이지 트레이너',
                        slogan: '험란한 인생게임을 즐겁게',
                        profile: 'assets/profile/Damin-profile.png',
                        description1: '청소년상담사 2급',
                        description2: '5년차 상담사',
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
