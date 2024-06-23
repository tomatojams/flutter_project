import 'package:flutter/material.dart';


import '../../constants/gaps.dart';
import 'email_screen.dart';
import 'widgets/form_button.dart';

class NicknameScreen extends StatefulWidget {
  const NicknameScreen({super.key});

  @override
  State<NicknameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<NicknameScreen> {
  final TextEditingController _tc = TextEditingController();

  String _userNickName = "";

  @override
  void initState() {
    super.initState();
    _tc.addListener(() {
      setState(() {
        _userNickName = _tc.text;
      });
    });
  }

  @override
  void dispose() {
    _tc.dispose();
    super.dispose();
  }

  void _onNextTap() {
    // stateful widget에서는 context를 인자로 받지 않아도 됨
    if (_userNickName.isEmpty) return;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const EmailScreen();
    }));
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
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
              const Text(
                "닉네임을 적어주세요",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Gaps.v12,
              const Text(
                "언제든지 바꿀수 있습니다. ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
              Gaps.v16,
              TextField(
                controller: _tc,
                cursorColor: Theme.of(context).primaryColor,
                decoration: const InputDecoration(
                  hintText: '닉네임',
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Gaps.v20,
              GestureDetector(
                  onTap: _onNextTap,
                  child: FormButton(disabled: _userNickName.isEmpty))
            ],
          ),
        ),
      ),
    );
  }
}
