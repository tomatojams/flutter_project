import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/common/base_response_model.dart';
import 'package:trade_crossing_ios/common/base_state.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/main.dart';
import 'package:trade_crossing_ios/screens/signup/state/signup_provider.dart';
import 'package:trade_crossing_ios/screens/trade/trade_screen.dart';
import 'package:trade_crossing_ios/services/user_service.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';
import 'package:trade_crossing_ios/widgets/toast_widget.dart';

class SignUpDoneScreen extends StatefulHookConsumerWidget {
  const SignUpDoneScreen({super.key});

  static const routePath = '/signup-done';
  static const routeName = 'SignUpDoneScreen';

  @override
  ConsumerState<SignUpDoneScreen> createState() => _SignUpDoneScreenState();
}

class _SignUpDoneScreenState extends ConsumerState<SignUpDoneScreen> {
  Future<void> showToast() async {
    final overlay = OverlayEntry(
      builder: (context) => CustomToast(
        text: '여권이 성공적으로 발급 되었어요.',
        positionFromBottom: 118.h,
      ),
    );

    Overlay.of(context).insert(overlay);
    await Future.delayed(2.seconds);
    overlay.remove();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(signUpStateProvider);
    final signUpState = useState<BaseState<bool>>(BaseState.loading());

    useFuture(
      useMemoized(
        () async {
          final result = await ref.watch(signUpStateProvider.notifier).signup();

          switch (result) {
            case SuccessResponse():
              signUpState.value = BaseState.success(true);

              break;
            case ErrorResponse():
              signUpState.value = BaseState.error(result.statusCode, result.message);
              break;
          }
        },
      ),
    );

    useEffect(() {
      signUpState.addListener(() {
        switch (signUpState.value) {
          case SuccessState():
            //TODO: Toast 띄우기
            // toast 띄우기
            WidgetsBinding.instance.addPostFrameCallback((_) async {
              await showToast();
            });
            talker.debug("회원가입 성공");
            // 유저 정보 조회
            ref.read(userServiceProvider.notifier).getUserInfo();
            break;
          case ErrorState():
            break;
          default:
            break;
        }
      });

      return null;
    }, const []);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              72.verticalSpace,
              //
              Text.rich(
                TextSpan(
                  text: "${model.username}님,\n",
                  style: headLine1TextStyle.copyWith(fontSize: 32.sp),
                  children: [
                    TextSpan(
                        text: "환영합니다!",
                        style: headLine1TextStyle.copyWith(fontSize: 32.sp, color: AppColor.primaryColor))
                  ],
                ),
              ),
              //
              24.verticalSpace,
              //
              Text(
                "이제 Trade Crossing에서\n다양한 아이템을 거래해보세요!",
                style: bodyMediumTextStyle.copyWith(fontSize: 14.sp),
              ),
              //
              const Spacer(),
              //
              BaseButton(text: "거래하기 가기", onPressed: () => context.go(TradeScreen.routePath)),
              //
              46.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
