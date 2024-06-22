import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pt_mind/constants/gaps.dart';
import 'package:pt_mind/features/authentication/login_screen.dart';
import 'package:pt_mind/features/authentication/widgets/auth_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  void _onLoginTap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gaps.v80,
                Text(
                  'TikTok에 가입하세요.',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.v20,
                Text(
                  '자신만의 계정을 만들고, TikTok을 시작하세요.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.v40,
                AuthButton(
                    icon: FaIcon(FontAwesomeIcons.user),
                    text: "Email과 Password로 로그인"),
                Gaps.v10,
                AuthButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    text: "Instagram으로 계속하기"),
                Gaps.v10,
                AuthButton(
                    icon: FaIcon(FontAwesomeIcons.apple), text: "Apple로 계속하기"),
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
                  onTap: () => _onLoginTap(context),
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
