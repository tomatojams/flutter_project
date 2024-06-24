  import 'package:flutter/material.dart';

void showPopup(BuildContext context) {
    // 0.3초의 딜레이를 준 후 팝업을 띄웁니다.
    Future.delayed(const Duration(milliseconds: 300), () {
      showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black54, // 팝업 바깥쪽의 어두운 배경색
        transitionDuration: const Duration(milliseconds: 500), // 애니메이션 지속 시간
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // 모서리 둥글게
            ),
            title: Text(
              '가입을 축하합니다.',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Theme.of(context).focusColor, // 텍스트 색상
                fontWeight: FontWeight.bold, // 텍스트 굵기
              ),
            ),
            content: const Text(
              '뉴럴안내 P.T와 대화해 보세요.',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black87, // 텍스트 색상
              ),
            ),
            backgroundColor: Colors.white, // 배경색
            actions: <Widget>[
              TextButton(
                
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  '확인',
                  style: TextStyle(
                    color: Theme.of(context).indicatorColor, // 버튼 텍스트 색상
                    fontWeight: FontWeight.bold, // 버튼 텍스트 굵기
                  ),
                ),
              ),
            ],
          );
        },
        transitionBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
    });
  }