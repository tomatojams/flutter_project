import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/introduction_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/state/signup_provider.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/signup_scaffold_widget.dart';
import 'package:trade_crossing_ios/utils/regexs.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';
import 'package:trade_crossing_ios/widgets/base_text_field.dart';

class IslandNameInputScreen extends HookWidget {
  const IslandNameInputScreen({super.key});

  static const routePath = "/island-name-input";
  static const routeName = "Island Name Input";

  @override
  Widget build(BuildContext context) {
    final errorText = useState<String?>(null);

    return SignUpBaseScaffold(
      onBack: () => context.pop(),
      currentStep: 3,
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
        //
        40.verticalSpace,
        //
        Text.rich(
          TextSpan(
            text: '섬 이름 ',
            style: titleSmallTextStyle.copyWith(fontSize: 12.sp),
            children: [
              TextSpan(
                text: '*',
                style: titleSmallTextStyle.copyWith(fontSize: 12.sp, color: AppColor.errorColor),
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
            final initialValue = ref.read(signUpStateProvider.select((value) => value.islandName));

            return BaseTextInputWidget(
              errorText: errorText.value,
              hintText: "섬 이름을 입력해주세요",
              intialValue: initialValue,
              onChanged: (value) {
                if (RegexUtils.noSpaceAndScpecialCharAndNumber.hasMatch(value!)) {
                  errorText.value = '특수문자나 숫자는 입력할 수 없습니다.';
                  return;
                } else {
                  errorText.value = null;
                  signUpNotifier.setIslandName(value);
                  return;
                }
              },
            );
          },
        ),
        //
        const Spacer(),
        //
        Consumer(
          builder: (context, ref, child) {
            final islandName = ref.watch(signUpStateProvider.select((value) => value.islandName));

            return BaseButton(
              text: '다음',
              disable: islandName.isEmpty || errorText.value != null,
              onPressed: () => context.push(IntroductionInputScreen.routePath),
            );
          },
        ),
        //
        16.verticalSpace,
      ],
    );
  }
}
