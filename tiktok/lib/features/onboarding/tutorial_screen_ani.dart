import 'dart:math';

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

enum Direction { left, right }

enum Page { first, second }

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  Direction direction = Direction.right;
  Page _showingPage = Page.first;

  void _onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dx > 0) {
      // delta -> 이동거리
      setState(() {
        direction = Direction.right;
      });
    } else {
      setState(() {
        direction = Direction.left;
      });
    }
  }

  void _onPanEnd(DragEndDetails details) {
    if (direction == Direction.left) {
      setState(() {
        _showingPage = Page.second;
      });
    } else {
      setState(() {
        _showingPage = Page.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            // 애니메이션 전환

            child: AnimatedCrossFade(
              firstChild: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gaps.v64,
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
                  ),
                ],
              ),
              secondChild: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Gaps.v64,
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
                  ),
                ],
              ),
              crossFadeState: _showingPage == Page.first
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 300),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 24,
            ),
            // 조건부 투명효과

            child: AnimatedOpacity(
              opacity: _showingPage == Page.first ? 0 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: CupertinoButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: const Text('시작합니다.'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
