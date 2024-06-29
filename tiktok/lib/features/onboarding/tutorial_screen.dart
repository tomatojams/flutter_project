import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/gaps.dart';

//         Gaps.v44,
// Text(
//   '행복을 느끼는 \n마음을 만들어보세요.',
//   style: TextStyle(
//     fontSize: 25,
//     fontWeight: FontWeight.w600,
//     color: Theme.of(context).dialogBackgroundColor,
//   ),
// ),
// Gaps.v20,
// Text(
//   '마음훈련은 당신을 더 행복하게 할수있습니다.',
//   style: TextStyle(
//     fontSize: 16,
//     color: Theme.of(context).indicatorColor,
//   ),
// ),
class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
          child: AnimatedCrossFade(
            firstChild: Column(
              children: [
                Gaps.v44,
                Text(
                  '상담사를 즐겨찾기에 \n추가해보세요.',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                ),
                Gaps.v20,
                Text(
                  '언제든지 상담사를 찾아볼 수 있습니다.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
              ],
            ),
            secondChild: Column(
              children: [
                Gaps.v44,
                Text(
                  'P.T에게 상담사를 \n추천받아 보세요.',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                ),
                Gaps.v20,
                Text(
                  'P.T는 유능한 추천전문가입니다.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
              ],
            ),
            crossFadeState: CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ),
      ),
    );
  }
}
