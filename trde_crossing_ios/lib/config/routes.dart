import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trade_crossing_ios/screens/chat/chat_screen.dart';
import 'package:trade_crossing_ios/screens/login/login_screen.dart';
import 'package:trade_crossing_ios/screens/mypage/mypage.dart';
import 'package:trade_crossing_ios/screens/root/root_screen.dart';
import 'package:trade_crossing_ios/screens/signup/introduction_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/islandName_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/name_input_screen.dart';
import 'package:trade_crossing_ios/screens/signup/profile_select_screen.dart';
import 'package:trade_crossing_ios/screens/signup/sign_up_done_screen.dart';
import 'package:trade_crossing_ios/screens/trade/trade_screen.dart';

final rootNavKey = GlobalKey<NavigatorState>();
final shellRouteKey = [
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
  GlobalKey<NavigatorState>(),
];

final goRouter = GoRouter(
  navigatorKey: rootNavKey,
  debugLogDiagnostics: true,
  initialLocation: LoginScreen.routePath,
  routes: [
    // 로그인 화면
    GoRoute(
      path: LoginScreen.routePath,
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),

    // 프로필 선택 화면
    GoRoute(
      path: ProfileSelectScreen.routePath,
      name: ProfileSelectScreen.routeName,
      builder: (context, state) =>
          ProfileSelectScreen(state.extra as ProfileSelectScreenArgument),
    ),

    // 이름 입력 화면
    GoRoute(
        path: NameInputScreen.routePath,
        name: NameInputScreen.routeName,
        builder: (context, state) => const NameInputScreen()),

    // 섬 이름 입력 화면
    GoRoute(
        path: IslandNameInputScreen.routePath,
        name: IslandNameInputScreen.routeName,
        builder: (context, state) => const IslandNameInputScreen()),

    // 한줄 소개 입력 화면
    GoRoute(
        path: IntroductionInputScreen.routePath,
        name: IntroductionInputScreen.routeName,
        builder: (context, state) => const IntroductionInputScreen()),

    // 회원가입 완료 화면
    GoRoute(
        path: SignUpDoneScreen.routePath,
        name: SignUpDoneScreen.routeName,
        builder: (context, state) => const SignUpDoneScreen()),

    // 메인 화면들
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: rootNavKey,
      builder: (context, state, navigationShell) => RootScreen(navigationShell),
      branches: [
        // 거래화면
        StatefulShellBranch(
          navigatorKey: shellRouteKey[0],
          routes: [
            GoRoute(
                path: TradeScreen.routePath,
                name: TradeScreen.routeName,
                builder: (context, state) => const TradeScreen())
          ],
        ),

        // 채팅화면
        StatefulShellBranch(
          navigatorKey: shellRouteKey[1],
          routes: [
            GoRoute(
                path: ChatScreen.routePath,
                name: ChatScreen.routeName,
                builder: (context, state) => const ChatScreen())
          ],
        ),

        // 마이페이지
        StatefulShellBranch(
          navigatorKey: shellRouteKey[2],
          routes: [
            GoRoute(
                path: MyPageScreen.routePath,
                name: MyPageScreen.routeName,
                builder: (context, state) => const MyPageScreen())
          ],
        ),
      ],
    )
  ],
);
