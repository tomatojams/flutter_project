import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class CustomToast extends HookWidget {
  const CustomToast({super.key, this.backgroundColor, required this.text, required this.positionFromBottom});

  final Color? backgroundColor;
  final String text;
  final double positionFromBottom;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: positionFromBottom),
          child: Material(
            child: SizedBox(
              height: 40.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: backgroundColor ?? AppColor.toastColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      const Icon(Icons.info_outline, color: Colors.white),
                      //
                      4.horizontalSpace,
                      //
                      FittedBox(
                          child: Text(
                        text,
                        style: const TextStyle(color: Colors.white, height: 1.0),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
