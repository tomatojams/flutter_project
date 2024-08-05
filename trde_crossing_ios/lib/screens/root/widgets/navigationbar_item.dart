import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.icon, required this.label, required this.onTap});

  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: onTap,
      backgroundColor: AppColor.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          SvgPicture.asset(
            icon,
            width: 24.w,
            height: 24.h,
          ),
          //
          4.verticalSpace,
          //
          Text(
            label,
            style: labelMediumTextStyle.copyWith(fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
