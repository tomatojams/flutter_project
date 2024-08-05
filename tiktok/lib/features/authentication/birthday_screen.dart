import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/gaps.dart';

import '../onboarding/interests_screen.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BrithdayScreenState();
}

class _BrithdayScreenState extends State<BirthdayScreen> {
  final TextEditingController _birthdayc = TextEditingController();
  // DateTime initialDate = DateTime.now();

// 12년을 뺀 날짜를 계산
  DateTime initialDate = DateTime(
      DateTime.now().year - 12, DateTime.now().month, DateTime.now().day);

  @override
  void initState() {
    // 텍스트필드에 초기 날짜 표시
    super.initState();
    _setTextFieldDate(initialDate);
  }

  @override
  void dispose() {
    _birthdayc.dispose();
    super.dispose();
  }

  void _onNextTap() {
    print('next');
    // 온보딩으로
    // stateful widget에서는 context를 인자로 받지 않아도 됨
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const InterestsScreen(),
        ),
        ((route) => false));
  }

  void _onScaffoldTap() {
    // 키보드 내리기
    FocusScope.of(context).unfocus();
  }

  void _setTextFieldDate(DateTime date) {
    // 텍스트필드에 날짜 표시
    final textDate = date.toString().split(' ').first;
    _birthdayc.value = TextEditingValue(text: textDate);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          foregroundColor: Colors.black87,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Gaps.h1,
              Text('회원가입'),
              Gaps.h52,
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v40,
              Row(
                children: [
                  const Expanded(
                    // 글자수가 길어지면 화면을 넘어가게 되는데, Expanded를 사용하면 화면을 넘어가지 않게 해줌
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "생년월일을 적어주세요.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Gaps.v12,
                        Text(
                          "생년월일은 다른 사용자에게 공개되지 않습니다",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Gaps.h28,
                  Image.asset(
                    'assets/icon/birthday-cake.png',
                    width: 60,
                  ),
                ],
              ),
              Gaps.v16,
              TextField(
                // 텍스트필드
                enabled: false,
                controller: _birthdayc,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  hintText: _birthdayc.text,
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Gaps.v20,
              CupertinoButton(
                alignment: Alignment.center,
                color: Theme.of(context).primaryColor,
                onPressed: _onNextTap,
                child: const FractionallySizedBox(
                  widthFactor: 1,
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Theme.of(context).scaffoldBackgroundColor,
            height: 300,
            child: CupertinoDatePicker(
              // 생년월일 선택 위젯
              maximumDate: initialDate,
              initialDateTime: initialDate,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: _setTextFieldDate,
            )),
      ),
    );
  }
}
