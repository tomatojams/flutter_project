import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/common/base_response_model.dart';
import 'package:trade_crossing_ios/domains/auth/signup_request.dart';
import 'package:trade_crossing_ios/main.dart';
import 'package:trade_crossing_ios/repository/auth_repository.dart';
import 'package:trade_crossing_ios/services/user_service.dart';

part 'signup_provider.g.dart';

@riverpod
class SignUpState extends _$SignUpState {
  @override
  SignUpRequest build() {
    return SignUpRequest.empty();
  }

  void setUsername(String username) {
    state = state.copyWith(username: username);
  }

  void setIntroduction(String introduction) {
    state = state.copyWith(introduction: introduction);
  }

  void setIslandName(String islandName) {
    state = state.copyWith(islandName: islandName);
  }

  void setProfilePic(String? profilePic) {
    state = state.copyWith(profilePic: profilePic);
  }

  // ===================== Methods ======================
  Future<BaseResponse<bool>> signup() async {
    // TODO: 서버에 회원가입 요청을 보내는 로직을 작성해주세요.
    final repo = ref.read(authRepositoryProvider);
    final response = await repo.signup(body: state);

    // 유저 정보 조회
    ref.read(userServiceProvider.notifier).getUserInfo();
    talker.debug(response);

    return SuccessResponse(data: true);
  }
}
