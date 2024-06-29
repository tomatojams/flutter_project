import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/features/onboarding/tutorial_screen_ani.dart';
import '../../constants/gaps.dart';
import 'widgets/interest_button.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  // 관심항목 리스트
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

  bool _showTitle = false;

  void _onScroll() {
    if (_sc.offset >= 100) {
      setState(() {
        _showTitle = true;
      });
    } else {
      setState(() {
        _showTitle = false;
      });
    }
  }

  @override
  void initState() {
    _sc.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _sc.dispose();
    super.dispose();
  }

  // 관심항목 선택 여부 리스트
  final List<bool> _isSelected = List.filled(interests.length, false);

  void _onTapToggle(index) {
    // 관심항목 선택
    setState(() {
      _isSelected[index] = !_isSelected[index];
    });
  }

  void _onNextTap() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TutorialScreen(),
        ));
  }

  final ScrollController _sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                // 글자 숨김 효과
                duration: const Duration(milliseconds: 300),
                opacity: _showTitle ? 1.0 : 0.0,
                child: Text(
                  'Choose your interests',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black87,
        ),
        body: Scrollbar(
          // 스크롤바
          controller: _sc,
          child: SingleChildScrollView(
            controller: _sc,
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

                          // 관심항목 버튼
                          child: InterestButton(
                              isSelected: _isSelected, interest: interest),
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          // BottomAppBar
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
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
                onPressed: _onNextTap,
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
