// 팝업화면

import 'package:flutter/material.dart';

import '../../constants/gaps.dart';

void dialogPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              // onTap: _onNextTap, child: const FormButton(disabled: false)),
              onTap: () {
               
              },

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('회원가입이 완료되었습니다.'),
                  Gaps.v10,
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
