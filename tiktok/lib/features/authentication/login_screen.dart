import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';
import 'login_form_screen.dart';
import 'widgets/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onSignUpTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  void onEmailLoginTap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginFormScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(
                  'P.Tmind 로그인',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).dialogBackgroundColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v20,
                Text(
                  '지금 바로, P.Tmind를 시작하세요.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).indicatorColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v40,
                GestureDetector(
                  onTap: () => onEmailLoginTap(context),
                  child: const AuthButton(
                      // icon: FaIcon(
                      //   FontAwesomeIcons.user,
                      //   color: Colors.black54,
                      // ),
                      text: "Email과 Password로 로그인"),
                ),
                Gaps.v15,
                GestureDetector(
                  child: AuthButton(
                      image: Image.asset('assets/icon/kakao.png',
                          color: Colors.black54, width: 23),
                      text: "kakao로 계속하기"),
                ),
                Gaps.v15,
                GestureDetector(
                  child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.facebook,
                          color: Colors.black54),
                      text: "facebook으로 계속하기"),
                ),
                Gaps.v15,
                GestureDetector(
                  child: const AuthButton(
                      icon: FaIcon(FontAwesomeIcons.apple,
                          color: Colors.black54, size: 28),
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '아직 계정이 없으신가요?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                  ),
                  Gaps.h3,
                  GestureDetector(
                    onTap: () => _onSignUpTap(context),
                    child: Text(
                      '계정만들기',
                      style: TextStyle(
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
