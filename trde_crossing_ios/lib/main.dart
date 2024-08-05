@MappableLib(generateInitializerForScope: InitializerScope.directory)
library main;

import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:trade_crossing_ios/config/routes.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/main.init.dart';
import 'package:trade_crossing_ios/utils/riverpod_observers.dart';

final talker = TalkerFlutter.init();

Future<void> main() async {
  // Mappable 클래스 초기화
  initializeMappers();
  WidgetsFlutterBinding.ensureInitialized();

  // env
  await dotenv.load(fileName: ".env");

  // kakao
  KakaoSdk.init(nativeAppKey: dotenv.env["KAKAO_KEY"]);

  //
  runApp(ProviderScope(
    observers: [RiverpodObserver()],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: lightTheme,
        builder: (context, child) => child!,
      ),
    );
  }
}
