import 'package:flutter/services.dart';
// import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:logger/logger.dart';

import '../common/base_state.dart';

class KakaoLoginException implements Exception {
  final String message;

  KakaoLoginException(this.message);
}

class KakaoService {
  Future<BaseState<User>> login() async {
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
        final me = await UserApi.instance.me();

        return SuccessState(me);
      } on KakaoException catch (e) {
        Logger().e(e);
        print(e);
        return ErrorState(500, "로그인 실패");
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        Logger().i("Token: ${await TokenManagerProvider.instance.manager.getToken()}");
        final me = await UserApi.instance.me();

        return SuccessState(me);
      } on KakaoException catch (e) {
        Logger().e(e);
  print(e);
        return ErrorState(500, "로그인 실패");
      } on PlatformException catch (e) {
        Logger().e(e);
  print(e);
        return ErrorState(500, "로그인 실패");
      }
    }
  }
}
