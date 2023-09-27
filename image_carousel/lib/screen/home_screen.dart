import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    // UI를 하얀색으로 바꿈
    return Scaffold(
      body: PageView(
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
