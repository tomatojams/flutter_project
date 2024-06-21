import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/constants/gaps.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                'Sign for TikTok',
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
                  '이미 계정이 있으신가요?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                Gaps.h3,
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_in');
                  },
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
