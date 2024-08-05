import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/common/base_response_model.dart';
import 'package:trade_crossing_ios/common/base_state.dart';
import 'package:trade_crossing_ios/domains/auth/login_request.dart';
import 'package:trade_crossing_ios/domains/auth/login_response.dart';
import 'package:trade_crossing_ios/domains/user/user_model.dart';
import 'package:trade_crossing_ios/repository/auth_repository.dart';
import 'package:trade_crossing_ios/services/google_service.dart';
import 'package:trade_crossing_ios/services/kakao_service.dart';

part 'user_service.g.dart';

@Riverpod(keepAlive: true)
class UserService extends _$UserService {
  @override
  BaseState<UserModel> build() => BaseState.init();

  AuthRepository get _authRepo => ref.read(authRepositoryProvider);
  final KakaoService _kakaoService = KakaoService();
  final GoogleService _googleService = GoogleService();

  Future<bool?> kakaoLogin() async {
    state = BaseState.loading();
    // 카카오 로그인 진행
    final result = await _kakaoService.login();

    // 로그인 상태에 따라 state 변경
    User? user = result.when(
      onSuccess: (data) => data.data,
      onError: (error) {
        state = BaseState.error(error.statusCode, error.message);
        return null;
      },
    );

    // 로그인에 성공했을 경우
    if (user != null) {
      // 우리 서버에 로그인 요청
      final response = await _authRepo.login(user.id.toString(), user.kakaoAccount!.email!, OAuthProvider.kakao,
          user.kakaoAccount?.profile?.profileImageUrl);

      switch (response) {
        // 성공했을 경우, 회원가입 여부 반환
        case SuccessResponse<LoginResponse>():
          await getUserInfo();
          return response.data.registered;

        // 실패 했을 경우, 상태를 에러로 변경후 null 반환
        case ErrorResponse<LoginResponse>():
          state = BaseState.error(response.statusCode, response.message);
        default:
          return null;
      }
    }
    return null;
  }

  Future<bool?> googleLogin() async {
    state = BaseState.loading();
    // 구글 로그인 진행
    final result = await _googleService.login();

    // 로그인 상태에 따라 state 변경
    GoogleSignInAccount? googleAccount = result.when(
        onSuccess: (data) => data.data,
        onError: (error) {
          state = BaseState.error(error.statusCode, error.message);
          return null;
        });

    if (googleAccount != null) {
      // 우리 서버에 로그인 요청
      final response =
          await _authRepo.login(googleAccount.id, googleAccount.email, OAuthProvider.google, googleAccount.photoUrl);

      switch (response) {
        case SuccessResponse<LoginResponse>():
          await getUserInfo();
          return response.data.registered;

        case ErrorResponse<LoginResponse>():
          state = BaseState.error(response.statusCode, response.message);
        default:
          return null;
      }
    }
    return null;
  }

  Future<void> appleLogin() async {}

  Future<void> logout() async {}

  Future<void> getUserInfo() async {
    state = BaseState.loading();

    final response = await _authRepo.getUserInfo();

    response.when(
      onSuccess: (response) {
        state = BaseState.success(response.data);
      },
      onError: (response) {
        state = BaseState.error(response.statusCode, response.message);
      },
    );
  }
}
