import 'package:flutter/material.dart';

import '../../constants/gaps.dart';
import 'password_screen.dart';
import 'widgets/form_button.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _tec = TextEditingController();

  String _email = "";

  @override
  void initState() {
    super.initState();
    _tec.addListener(() {
      setState(() {
        _email = _tec.text;
      });
    });
  }

  @override
  void dispose() {
    _tec.dispose();
    super.dispose();
  }

  String? _isEmailValid() {
    if (_tec.text.isEmpty) {
      return '이메일을 입력해주세요';
    }
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(_email)) {
      return '이메일 형식이 아닙니다';
    }
    return null;
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  // void _onSubmit() {
  //   if (_email.isEmpty || _isEmailValid() != null) return;

  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return const PasswordScreen();
  //   }));

  // 디버깅용 위의 코드가 진짜
  void _onSubmit() {
    if (_email.isEmpty || _isEmailValid() != null) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const PasswordScreen();
    }));
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.v40,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      // 글자수가 길어지면 화면을 넘어가게 되는데, Expanded를 사용하면 화면을 넘어가지 않게 해줌
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "이메일을 적어주세요",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Gaps.v16,
                          TextField(
                            autofocus: true,
                            keyboardType:
                                TextInputType.emailAddress, // 키보드 타입 지정
                            autocorrect: false,
                            controller: _tec,
                            onEditingComplete: _onSubmit,
                            cursorColor: Theme.of(context).primaryColor,
                            decoration: InputDecoration(
                              errorStyle: const TextStyle(
                                color: Colors.pink,
                              ),
                              errorText: _isEmailValid(),
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              errorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black54,
                                ),
                              ),
                              focusedErrorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                ),
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
                        ],
                      ),
                    ),
                    Gaps.h10,
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Image.asset('assets/images/auth/mail3.png',
                          width: 40),
                    ), // 이미지 추가
                  ],
                ),
                Gaps.v20,
                GestureDetector(
                  onTap: _onSubmit,
                  child: FormButton(
                      disabled: _email.isEmpty || _isEmailValid() != null),
                ), // 메세지가 사라져야 활성화
              ],
            ),
          ),
        ),
      ),
    );
  }
}
