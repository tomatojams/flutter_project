import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class SelectedChipWidget extends StatelessWidget {
  const SelectedChipWidget({super.key, required this.label, required this.onPressed});

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed.call(),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        height: 24.h,
        padding: EdgeInsets.fromLTRB(12.w, 4.h, 10.w, 4.h),
        decoration: BoxDecoration(
          color: AppColor.accent700,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            //
            Text(label, style: labelMediumTextStyle.copyWith(fontSize: 12.sp, color: Colors.white)),
            //
            4.horizontalSpace,
            //
            const Icon(
              Icons.close,
              color: Colors.white,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
