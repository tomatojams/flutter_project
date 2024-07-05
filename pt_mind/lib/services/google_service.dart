import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

import '../common/base_state.dart';

class GoogleService {
  Future<BaseState<GoogleSignInAccount>> login() async {
    try {
      final result = await GoogleSignIn().signIn();
      return SuccessState(result!);
    } catch (e) {
      Logger().e(e);
      return ErrorState(500, "구글 로그인 실패");
    }
  }

  Future<BaseState<GoogleSignInAccount>> logOut() async {
    try {
      final result = await GoogleSignIn().signOut(); // signOut == logOut 으로 사용되고 있음
      return SuccessState(result!);
    } catch (e) {
      Logger().e(e);
      return ErrorState(500, "구글 로그아웃 실패");
    }
  }
}
