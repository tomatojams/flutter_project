import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/gaps.dart';
import '../navigator/pt_state.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  static final interests = [
    "행복한 삶",
    "마음의 건강",
    "타인과의 관계",
    "우울함",
    "스트레스",
    "자존감",
    "자아실현",
    "자기계발",
    "명상",
    "불면증",
    "불안",
    "마음의 상처",
    "장래문제",
    "경제문제",
    "가족과의 갈등",
    "성격",
    "직장문제",
    "학업문제",
    "연애문제",
  ];

  final List<bool> _bgtoggle = List.filled(interests.length, false);

  void _onTapToggle(index) {
    // 관심항목 선택
    setState(() {
      _bgtoggle[index] = !_bgtoggle[index];
    });
  }

  void _onSubmitTap() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const PTstate()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          // title: const Text(
          //   'Interests',
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.w600,
          //     // color: Theme.of(context).dialogBackgroundColor,
          //   ),
          // ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black87,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.v32,
                Text(
                  'Choose your interests',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                ),
                Gaps.v20,
                Text(
                  '- 당신에게 알맞은 상담사를 추천하는데에 도움이 됩니다.',
                  style: TextStyle(
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                Gaps.v64,
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 24,
                  runSpacing: 30,
                  children: [
                    for (var interest in interests.asMap().entries)
                      GestureDetector(
                        onTap: () => {_onTapToggle(interest.key)},
                        child: Container(
                          // 관심항목 박스
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 24,
                          ),
                          decoration: BoxDecoration(
                            color: _bgtoggle[interest.key]
                                ? Theme.of(context).primaryColorLight
                                : Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).shadowColor,
                                blurRadius: 5,
                                spreadRadius: 5,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Text(interest.value, // 관심항목 텍스트
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: _bgtoggle[interest.key]
                                    ? Theme.of(context).cardColor
                                    : Theme.of(context).indicatorColor,
                              )),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          // BottomAppBar
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 2,
          child: Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 30,
                left: 24,
                right: 24,
              ),
              child: CupertinoButton(
                // Next 버튼
                color: Theme.of(context).primaryColor,
                onPressed: _onSubmitTap,
                child: const Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              )

              // child: Container(
              //   padding: const EdgeInsets.symmetric(
              //     vertical: 16,
              //   ),
              //   decoration: BoxDecoration(
              //     color: Theme.of(context).primaryColor,
              //   ),
              //   child: const Text(
              //     'next',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 16,
              //     ),
              //   ),
              // ),
              ),
        ));
  }
}
