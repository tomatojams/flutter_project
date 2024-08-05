import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/sign_up_done_screen.dart';
import 'package:trade_crossing_ios/screens/signup/state/signup_provider.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/signup_scaffold_widget.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';
import 'package:trade_crossing_ios/widgets/base_text_field.dart';

class IntroductionInputScreen extends StatelessWidget {
  const IntroductionInputScreen({super.key});

  static const routePath = '/introduction-input';
  static const routeName = 'IntroductionInputScreen';

  @override
  Widget build(BuildContext context) {
    return SignUpBaseScaffold(
      onBack: () => context.pop(),
      currentStep: 4,
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
            text: '한줄 소개 ',
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
            final initialValue = ref.read(signUpStateProvider.select((value) => value.introduction));

            return BaseTextInputWidget(
              intialValue: initialValue,
              hintText: "간단한 자기소개를 작성해주세요",
              onChanged: (value) => signUpNotifier.setIntroduction(value ?? ''),
            );
          },
        ),
        //
        const Spacer(),
        //
        Consumer(
          builder: (context, ref, child) {
            final introduction = ref.watch(signUpStateProvider.select((value) => value.introduction));

            return BaseButton(
              text: '여권 발급받기',
              disable: introduction.isEmpty,
              onPressed: () => context.go(SignUpDoneScreen.routePath),
            );
          },
        ),
        //
        16.verticalSpace,
      ],
    );
  }
}
