import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/utils/build_context_extension.dart';

class BaseTextInputWidget extends HookWidget {
  const BaseTextInputWidget({
    super.key,
    this.onChanged,
    this.validator,
    this.errorText,
    this.hintText,
    this.intialValue,
  });

  final void Function(String? value)? onChanged;
  final String? Function(String? value)? validator;
  final String? errorText;
  final String? hintText;
  final String? intialValue;

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: intialValue ?? '');
    final focusNode = useFocusNode();

    return TextFormField(
      validator: validator,
      controller: textEditingController,
      focusNode: focusNode,
      autofocus: true,
      onChanged: onChanged,
      onTapOutside: (event) => focusNode.unfocus(),
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        hintStyle: context.textTheme.titleSmall?.copyWith(fontSize: 13.sp, color: AppColor.textDisable),
        //
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColor.buttonDisableColor, width: 1.w),
        ),
        //
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColor.buttonDisableColor, width: 1.w),
        ),
        //
        focusColor: AppColor.primaryColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColor.primaryColor, width: 1.w),
        ),
        //
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColor.errorColor, width: 1.w),
        ),
      ),
    );
  }
}
