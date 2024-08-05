import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    this.width,
    this.height,
    this.textColor,
    required this.text,
    this.disable = false,
    required this.onPressed,
  });

  final double? width;
  final double? height;
  final Color? textColor;
  final String text;
  final bool disable;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 56.h,
      child: ElevatedButton(
        onPressed: disable ? null : onPressed,
        child: Text(
          text,
          style: buttonTextStyle.copyWith(color: disable ? AppColor.textDisable : textColor ?? AppColor.textColor),
        ),
      ),
    );
  }
}
