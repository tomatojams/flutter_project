import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class SearchWidget extends HookWidget {
  const SearchWidget({super.key, required this.hintText, required this.onChanged});

  final String hintText;
  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final searching = useState(false);
    final focusNode = useFocusNode();

    return CustomButton(
      height: 40.h,
      borderRadius: 12.r,
      onPressed: () {
        searching.value = true;
        focusNode.requestFocus();
      },
      backgroundColor: AppColor.cardColor,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //
          if (!searching.value) ...{
            Text(hintText, style: labelMediumTextStyle.copyWith(color: AppColor.inputBorder, fontSize: 13.sp))
          } else ...{
            Expanded(
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                onChanged: (value) => onChanged(value),
                onTapOutside: (event) {
                  searching.value = false;
                  focusNode.unfocus();
                },
                decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText,
                  hintStyle: labelMediumTextStyle.copyWith(color: AppColor.inputBorder, fontSize: 13.sp),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            )
          },

          //
          SvgPicture.asset(
            Assets.assetsIconsSearch,
            width: 24.w,
            height: 24.h,
          )
        ],
      ),
    );
  }
}
