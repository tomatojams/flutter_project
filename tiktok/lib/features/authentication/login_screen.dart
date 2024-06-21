import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/features/authentication/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void onSignUpTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gaps.v80,
              Text(
                'Login TikTok',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          // color: Colors.grey.shade100,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 3,
            ),
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
                  onTap: () => onSignUpTap(context),
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
          )),
    );
  }
}
