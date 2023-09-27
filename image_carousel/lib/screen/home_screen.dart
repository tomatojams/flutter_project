import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController(); // 페이지 컨트롤러 생성

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (timer) {
      int? nextPage = pageController.page?.toInt(); 
      //  현재 페이지를 정수로 변환하여 nextPage에 저장 
      // 페이지가 전환중일때는 double 형태로 반환되므로 정수로 변환해야 함

      if (nextPage == null) {
        return;
      }

      if (nextPage == 4) {
        nextPage = 0;
      } else {
        nextPage++;
      }

      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // UI를 하얀색으로 바꿈
    return Scaffold(
      body: PageView(
        controller: pageController, // 페이지 컨트롤러를 PageView에 연결
        children: const [1, 2, 3, 4, 5] // 리스트를 이미지와 매핑한 후에 리스트로 변환
            .map((number) => Image.asset(
                  // Image.asset: 이미지를 불러오고 표시하는  위젯
                  'asset/img/image_$number.jpeg',
                  fit: BoxFit.cover,
                ))
            // BoxFit.cover: 이미지가 최대한 전체화면을 차지하도록 늘어남
            .toList(),
      ),
    );
  }
}
