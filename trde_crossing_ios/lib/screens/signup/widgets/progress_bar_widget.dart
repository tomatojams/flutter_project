library signup;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/utils/build_context_extension.dart';

class SignUpProgressWidget extends StatelessWidget {
  const SignUpProgressWidget({super.key, required this.total, required this.current});

  final int total;
  final int current;

  @override
  Widget build(BuildContext context) {
    final double progress = (current / total) * context.witdh;

    return SizedBox(
      width: double.infinity,
      height: 4.h,
      child: current < total
          ? Row(
              children: [
                // 현재 진행
                Container(
                  width: progress,
                  color: AppColor.primaryColor,
                ),

                // 남은 공간
                Expanded(child: Container(color: AppColor.buttonDisableColor)),
              ],
            )
          : Container(
              color: AppColor.primaryColor,
            ),
    );
  }
}
