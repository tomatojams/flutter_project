import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/gaps.dart';

import '../../services/kakao_service.dart';
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
              // 원래 40
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/auth/signupnew.svg',
                    width: 280,
                  ),
                  // Image.asset(
                  //   'assets/images/auth/signup.png',
                  //   width: 280,
                  // ),
                  // Gaps.v80,
                  Text(
                    'P.Tmind 친구하기',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).dialogBackgroundColor,
                    ),
                  ),
                  Gaps.v20,
                  Text(
                    '자신만의 계정을 만들고, P.Tmind를 시작하세요.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).indicatorColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Gaps.v40,
                  GestureDetector(
                    onTap: () =>
                        _onEmailTap(context), // stateless라서 context를 넘겨줘야함
                    child: const AuthButton(
                        // icon: FaIcon(
                        //   FontAwesomeIcons.user,
                        //   color: Colors.black54,
                        // ),
                        text: "Email과 Password로 로그인"),
                  ),
                  Gaps.v15,
                  GestureDetector(
                    onTap: () async {
                      final result = await KakaoService().login();
                      result.when(
                        onSuccess: (data) {
                          print(data);
                        },
                        onError: (error) {
                          print(error);
                        },
                      );
                    },
                    child: AuthButton(
                        image: Image.asset('assets/icon/kakao.png',
                            color: Colors.black54, width: 23),
                        text: "kakao로 3초만에 계속하기"),
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
      ),
      bottomNavigationBar: BottomAppBar(
          // color: Colors.grey.shade100,
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 3,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
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
            ),
          )),
    );
  }
}
