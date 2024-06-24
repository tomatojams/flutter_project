import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:pt_mind/constants/gaps.dart';

void popupDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black54, // 팝업 바깥쪽의 어두운 배경색
    transitionDuration: const Duration(milliseconds: 300), // 애니메이션 지속 시간
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Theme.of(context).cardColor,
        child: SizedBox(
          height: 370,
          width: 250,
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 0.0,
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gaps.h40,
                          SimpleShadow(
                            opacity: 0.4, // Default: 0.5 // Default: Black
                            offset: const Offset(0, 0), // Default: Offset(2, 2)
                            sigma: 4,
                            child: Image.asset(
                              'assets/profile/Namisun-profile.png',
                              height: 90,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ],
                      ),
                      Gaps.v20,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Gaps.h20,
                            Row(
                              children: [
                                Text(
                                  '해피매직',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Theme.of(context).focusColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Gaps.h5,
                                Text(
                                  '나미선',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Theme.of(context).indicatorColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'assets/icon/heartOff.svg',
                            ),
                          ],
                        ),
                      ),
                      Gaps.v32,
                      SizedBox(
                        height: 80,
                        child: Text(
                          '행복의 기적을 찾아갑니다.\n성숙한 조언으로 삶이 평온해지는 행복을 느끼게 해드리려 합니다.',
                          style: TextStyle(
                            color: Theme.of(context).indicatorColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0, bottom: 2, left: 10, right: 10),
                              child: Text(
                                '심리상담사 1급',
                                style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                          Gaps.h10,
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 0, bottom: 2, left: 10, right: 10),
                              child: Text(
                                '15년차 베테랑',
                                style: TextStyle(
                                  color: Theme.of(context).hintColor,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/line/hLine.svg',
                width: 303,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 6,
                        top: 8.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        '   리뷰&\n상담사정보',
                        style: TextStyle(
                          color: Theme.of(context).indicatorColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/line/vLine.svg',
                    height: 67,
                  ),
                  Expanded(
                      child: Container(
                    height: 67,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                      color: Color(0xFFFCF0F0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '상담예약을 신청합니다.',
                          style: TextStyle(
                              fontSize: 13,
                              color: Theme.of(context).indicatorColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '무료상담쿠폰 2장.',
                          style: TextStyle(fontSize: 11),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
      );
    },
    transitionBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
