import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
import 'email_screen.dart';
import 'login_screen.dart';
import 'widgets/auth_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  void _onLoginTap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  void _onEmailTap(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const EmailScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: SafeArea(
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.v80,
                const Text(
                  'P.Tmind에 가입하세요.',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.v20,
                const Text(
                  '자신만의 계정을 만들고, P.Tmind를 시작하세요.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v40,
                GestureDetector(
                  onTap: () =>
                      _onEmailTap(context), // stateless라서 context를 넘겨줘야함
                  child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.user),
                      text: "Email과 Password로 로그인"),
                ),
                Gaps.v10,
                GestureDetector(
                  child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      text: "Instagram으로 계속하기"),
                ),
                Gaps.v10,
                GestureDetector(
                  child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple),
                      text: "Apple로 계속하기"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          // color: Colors.grey.shade100,
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '이미 계정이 있으신가요?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                Gaps.h3,
                GestureDetector(
                  onTap: () =>
                      _onLoginTap(context), // stateless라서 context를 넘겨줘야함
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
