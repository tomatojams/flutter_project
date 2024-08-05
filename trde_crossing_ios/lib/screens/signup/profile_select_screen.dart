library signup;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/signup/name_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/state/signup_provider.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/profile_select_widget.dart';
import 'package:trade_crossing_ios/screens/signup/widgets/signup_scaffold_widget.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';

class ProfileSelectScreenArgument {
  const ProfileSelectScreenArgument(this.profileImg);
  final String? profileImg;
}

class ProfileSelectScreen extends ConsumerWidget {
  const ProfileSelectScreen(this.arg, {super.key});

  final ProfileSelectScreenArgument arg;

  static const routePath = '/profile-select';
  static const routeName = 'ProfileSelectScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profilePic = ref.watch(signUpStateProvider.select((value) => value.profilePic));

    return SignUpBaseScaffold(
      onBack: () => context.pop(),
      currentStep: 1,
      children: [
        //
        24.verticalSpace,
        //
        Text(
          '사용하실 프로필 사진을\n선택해주세요',
          style: titleMediumTextStyle.copyWith(fontSize: 22.sp),
        ),
        //
        40.verticalSpace,
        //
        ProfileSelectWidget(
          arg.profileImg,
          onSelect: (profileImg) => ref.read(signUpStateProvider.notifier).setProfilePic(profileImg),
        ),
        //
        const Spacer(),

        //
        BaseButton(
          text: '다음',
          onPressed: () => context.push(NameInputScreen.routePath),
          disable: profilePic.isEmpty ? true : false,
        ),
      ],
    );
  }
}
