import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class CustomCheckboxWidget<T> extends HookWidget {
  const CustomCheckboxWidget({
    super.key,
    required this.onChanged,
    required this.value,
    required this.isSelected,
  });

  final Function(T value) onChanged;
  final T value;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //
        Checkbox(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          activeColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
          side: BorderSide(color: AppColor.primaryColor, width: 1.5.w),
          value: isSelected,
          onChanged: (selection) {
            onChanged(value);
          },
        ),
        //
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            value.toString(),
          ),
        )
      ],
    );
  }
}
