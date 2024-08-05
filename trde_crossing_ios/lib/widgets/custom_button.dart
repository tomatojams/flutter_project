import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderRadius,
    this.border,
    this.child,
    this.padding,
  });

  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? borderRadius;
  final BoxBorder? border;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        padding: padding ?? EdgeInsets.zero,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          border: border,
        ),
        child: child,
      ),
    );
  }
}
