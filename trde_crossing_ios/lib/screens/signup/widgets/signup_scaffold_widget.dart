import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/progress_bar_widget.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class SignUpBaseScaffold extends StatelessWidget {
  const SignUpBaseScaffold({super.key, required this.onBack, required this.currentStep, required this.children});

  final VoidCallback onBack;
  final int currentStep;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            28.verticalSpace,
            //
            Hero(
              tag: 'back',
              child: CustomButton(
                width: 32.w,
                height: 32.h,
                onPressed: onBack,
                child: SvgPicture.asset(Assets.assetsIconsBack, width: 32.w, height: 32.h),
              ),
            ),
            //
            12.verticalSpace,
            // Progress Bar
            Hero(
              tag: 'progress',
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: SignUpProgressWidget(total: 4, current: currentStep),
              ),
            ),

            ...children,
          ],
        ),
      )),
    );
  }
}
