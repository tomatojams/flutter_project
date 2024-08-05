import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class AppleLoginButton extends StatelessWidget {
  const AppleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {},
      width: 300.w,
      height: 48.h,
      backgroundColor: Colors.black,
      borderRadius: 16.r,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // 카카오 심볼
          SvgPicture.asset(
            Assets.assetsIconsAppleSymbol,
            width: 40.w,
            height: 40.h,
          ),
          //
          const Spacer(),
          //
          Text("Apple 계정으로 시작하기", style: buttonTextStyle.copyWith(color: Colors.white, fontSize: 14.sp)),
          //
          const Spacer(),
        ],
      ),
    );
  }
}
