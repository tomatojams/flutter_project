import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/trade/trade_screen.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

import '../../widgets/base_scaffold.dart';
import 'widgets/apple_login_widget.dart';
import 'widgets/google_login_button_widget.dart';
import 'widgets/kakao_login_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routePath = '/login';
  static const routeName = 'Login';

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          //
          Text(
            "Trade\nCrossing",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.sp,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
            ),
          ),
          //
          64.verticalSpace,
          //
          const KakaoLoginButton(),
          //
          12.verticalSpace,
          //
          const GoogleLoginButton(),
          //
          12.verticalSpace,
          //
          const AppleLoginButton(),
          //
          20.verticalSpace,
          //
          CustomButton(
            onPressed: () => context.go(TradeScreen.routePath),
            child: Text(
              "둘러보기",
              style: labelMediumTextStyle.copyWith(
                  color: Colors.black, fontSize: 13.sp, decoration: TextDecoration.underline),
            ),
          ),

          //
          SizedBox(
            height: 74.h - MediaQuery.of(context).viewPadding.bottom,
          )
        ],
      ),
    ));
  }
}
