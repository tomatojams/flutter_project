// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';
import 'package:trade_crossing_ios/common/base_state.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/profile_select_screen.dart';
import 'package:trade_crossing_ios/services/user_service.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class KakaoLoginButton extends ConsumerWidget {
  const KakaoLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      onPressed: () async {
        final userState = ref.watch(userServiceProvider);
        final userNotifier = ref.read(userServiceProvider.notifier);

        final result = await userNotifier.kakaoLogin();

        // 에러 상태
        if (result == null || userState is ErrorState) {
          // 에러 처리
          return;
        }
        // 회원가입이 되어있지 않은 경우
        else if (result == false) {
          final me = await UserApi.instance.me();
          // 회원가입 화면으로 이동
          context.push(
            ProfileSelectScreen.routePath,
            extra: ProfileSelectScreenArgument(me.kakaoAccount?.profile?.profileImageUrl),
          );
        } else {
          // 가입된 유저인 경우
          //TODO: 홈 화면으로 이동
        }
      },
      width: 300.w,
      height: 48.h,
      backgroundColor: const Color(0xffFEE500),
      borderRadius: 16.r,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 카카오 심볼
          SvgPicture.asset(
            Assets.assetsIconsKakaoSymbol,
            width: 40.w,
            height: 40.h,
          ),
          //
          const Spacer(),
          //
          Text("카카오 계정으로 시작하기", style: buttonTextStyle.copyWith(color: Colors.black, fontSize: 14.sp)),
          //
          const Spacer(),
        ],
      ),
    );
  }
}
