import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:trade_crossing_ios/common/base_state.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/profile_select_screen.dart';
import 'package:trade_crossing_ios/services/google_service.dart';
import 'package:trade_crossing_ios/services/user_service.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class GoogleLoginButton extends ConsumerWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      onPressed: () async {
        final userState = ref.watch(userServiceProvider);
        final userNotifier = ref.read(userServiceProvider.notifier);

        final result = await userNotifier.googleLogin();

        if (result == null || userState is ErrorState) { // error case 
          return;
        } else if (result == false) { // 회원가입이 필요한 경우

          String? profileImg = GoogleSignIn().currentUser?.photoUrl;
          context.push(
              ProfileSelectScreen.routePath,
              extra: ProfileSelectScreenArgument(profileImg)
          );
        } else { // 이미 가입된 유저의 경우 
          //TODO: 홈 화면으로 이동
        }
      },
      width: 300.w,
      height: 48.h,
      backgroundColor: Colors.white,
      borderRadius: 16.r,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 카카오 심볼
          SvgPicture.asset(
            Assets.assetsIconsGoogleSymbol,
            width: 40.w,
            height: 40.h,
          ),
          //
          const Spacer(),
          //
          Text("Google 계정으로 시작하기", style: buttonTextStyle.copyWith(color: Colors.black, fontSize: 14.sp)),
          //
          const Spacer(),
        ],
      ),
    );
  }
}
