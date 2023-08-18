import 'package:flutter/material.dart';

class ScrollableButtonsPage extends StatefulWidget {
  const ScrollableButtonsPage({Key? key}) : super(key: key);

  @override
  _ScrollableButtonsPageState createState() => _ScrollableButtonsPageState();
}

class _ScrollableButtonsPageState extends State<ScrollableButtonsPage> {
  // 가로로 스크롤할 글자들의 리스트

  final List<String> textList = [
    'DEMO',
    '15',
    '20',
    '25',
    '30',
    '35'
    // ... 추가 글자들
  ];

  // 현재 가운데에 위치한 버튼의 인덱스
  int centerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: textList.asMap().entries.map((entry) {
            int index = entry.key;
            String text = entry.value;
            return GestureDetector(
              onTap: () {
                setState(() {
                  centerIndex = index;
                });
                _onButtonPressed(index); // 버튼 눌림 처리
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color:
                      centerIndex == index ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  centerIndex == index ? text : text,
                  style: TextStyle(
                    color: centerIndex == index
                        ? const Color(0xffE64D3D)
                        : Colors.white,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _onButtonPressed(int index) {
    // 버튼을 눌렀을 때의 동작을 구현합니다.
    print("Button ${textList[index]} pressed.");
  }
}
