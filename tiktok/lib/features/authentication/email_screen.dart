
import 'package:flutter/material.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/features/authentication/password_screen.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

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

  void _onSubmit() {
    if (_email.isEmpty || _isEmailValid() != null) return;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const PasswordScreen();
    }));
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return const EmailScreen();
    // }));
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
              Text('Sign Up'),
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
                "이메일을 적어주세요",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Gaps.v16,
              TextField(
                keyboardType: TextInputType.emailAddress,// 키보드 타입 지정
                autocorrect: false,
                controller: _tec,
                onEditingComplete: _onSubmit,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                  errorText: _isEmailValid(),
                  hintText: 'Email',
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
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                    disabled: _email.isEmpty || _isEmailValid() != null),
              ), // 메세지가 사라져야 활성화
            ],
          ),
        ),
      ),
    );
  }
}
