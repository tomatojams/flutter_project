import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/islandName_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/state/signup_provider.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/signup_scaffold_widget.dart';
import 'package:trade_crossing_ios/utils/build_context_extension.dart';
import 'package:trade_crossing_ios/utils/regexs.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';
import 'package:trade_crossing_ios/widgets/base_text_field.dart';

class NameInputScreen extends HookWidget {
  const NameInputScreen({super.key});

  static const routePath = '/name-input';
  static const routeName = 'NameInputScreen';

  @override
  Widget build(BuildContext context) {
    final errorText = useState<String?>(null);

    return SignUpBaseScaffold(
      onBack: () => context.pop(),
      currentStep: 2,
      children: [
        //
        24.verticalSpace,
        //
        Hero(
          tag: 'signup_title',
          child: Text(
            '회원 정보를\n입력해주세요',
            style: titleMediumTextStyle.copyWith(fontSize: 22.sp),
          ),
        ),
        //
        40.verticalSpace,
        //
        Text.rich(
          TextSpan(
            text: '주민 대표 이름 ',
            style: context.textTheme.titleSmall?.copyWith(fontSize: 12.sp),
            children: [
              TextSpan(
                text: '*',
                style: context.textTheme.titleSmall?.copyWith(fontSize: 12.sp, color: AppColor.errorColor),
              ),
            ],
          ),
        ),
        //
        8.verticalSpace,
        //
        Consumer(
          builder: (context, ref, child) {
            final signUpNotifier = ref.read(signUpStateProvider.notifier);
            final initialValue = ref.read(signUpStateProvider.select((value) => value.username));

            return BaseTextInputWidget(
              errorText: errorText.value,
              hintText: "주민 대표 이름을 입력해주세요",
              intialValue: initialValue,
              onChanged: (value) {
                if (RegexUtils.noSpaceAndScpecialCharAndNumber.hasMatch(value!)) {
                  errorText.value = '특수문자나 숫자는 입력할 수 없습니다.';
                  return;
                } else {
                  errorText.value = null;
                  signUpNotifier.setUsername(value);
                  return;
                }
              },
            );
          },
        ),
        //
        16.verticalSpace,
        //
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Text(
            "• 나중에 변경할 수 없으니 신중히 작성해 주세요.",
            style: context.textTheme.labelMedium?.copyWith(fontSize: 11.sp),
          ),
        ),
        //
        const Spacer(),
        //
        Consumer(
          builder: (context, ref, child) {
            final userName = ref.watch(signUpStateProvider.select((value) => value.username));

            return BaseButton(
              text: '다음',
              disable: userName.isEmpty || errorText.value != null,
              onPressed: () => context.push(IslandNameInputScreen.routePath),
            );
          },
        ),
        //
        16.verticalSpace,
      ],
    );
  }
}
