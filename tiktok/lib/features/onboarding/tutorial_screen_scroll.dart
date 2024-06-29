import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/gaps.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

// DefaultTabController( child:TabBarView(children[pages]) + bottom: TabPageSelector)

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    //TabBarView와 TabPageSelector() 사용전 DefaultTabController 세팅
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: TabBarView(children: [
              //DefaultTabController의 children에 들어가야함
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gaps.v44,
                    Text(
                      '행복을 느끼는 \n마음을 만들어보세요.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).dialogBackgroundColor,
                      ),
                    ),
                    Gaps.v20,
                    Text(
                      '마음훈련은 당신을 더 행복하게 할수있습니다.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).indicatorColor,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 48,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TabPageSelector(
                    selectedColor: Theme.of(context).dialogBackgroundColor,
                    indicatorSize: 10,
                  )
                ], //DefaultTabController의 아래에 있어야함
              ),
            ),
          ),
        ));
  }
}
