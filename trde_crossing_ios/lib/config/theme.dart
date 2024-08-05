import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.backgroundColor,
    //
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.primaryColor,
      elevation: 0,
    ),
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColor.buttonDisableColor;
          }
          return AppColor.buttonColor;
        }),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    ),
    //
    cardTheme: CardTheme(
      color: AppColor.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    //
    primaryTextTheme: const TextTheme(
      titleMedium: TextStyle(color: AppColor.textColor, fontSize: 22, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.w700),
      labelMedium: TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.normal),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(color: AppColor.textColor, fontSize: 22, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.w700),
      labelMedium: TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.normal),
    ),
    //
    floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: AppColor.accent600));

final darkTheme = ThemeData(
  brightness: Brightness.dark,
);

abstract class AppColor {
  static const backgroundColor = Color(0xfff6f3e8);
  static const primaryColor = Color(0xff8CD9BC);

  // Text
  static const textColor = Color(0xff4C3E35);
  static const textDisable = Color(0xffA2998E);
  static const accent500 = Color(0xff80caa8);
  static const accent600 = Color(0xff67bc93);
  static const accent700 = Color(0xff529776);

  // Button
  static const buttonColor = primaryColor;
  static const buttonDisableColor = Color(0xffd8d4c6);

  // card
  static const cardColor = Color(0xffe7e3d5);

  // toast
  static const toastColor = Color(0xff8d857d);

  // error
  static const errorColor = Color(0xffE95252);

  // border
  static const borderColor = Color(0xffD9D4C4);

  /// InputBorder
  static const inputBorder = Color(0xff70675C);
}

abstract class LightAppColor extends AppColor {}

abstract class DarkAppColor extends AppColor {}

final buttonTextStyle = TextStyle(
  fontFamily: "Poppins",
  color: AppColor.textColor,
  fontWeight: FontWeight.bold,
  fontSize: 16.sp,
);

const titleMediumTextStyle = TextStyle(color: AppColor.textColor, fontSize: 22, fontWeight: FontWeight.w500);
const titleSmallTextStyle = TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.w700);
//
const bodyLargeTextStyle = TextStyle(color: AppColor.textColor, fontSize: 22, fontWeight: FontWeight.w500);
const bodyMediumTextStyle = TextStyle(color: AppColor.textColor, fontSize: 14, fontWeight: FontWeight.normal);
//
const labelMediumTextStyle = TextStyle(color: AppColor.textColor, fontSize: 12, fontWeight: FontWeight.normal);
//
const headLine1TextStyle = TextStyle(color: AppColor.textColor, fontSize: 32, fontWeight: FontWeight.bold);
//
const appBarTextStyle = TextStyle(color: AppColor.textColor, fontSize: 17, fontWeight: FontWeight.w700);

// Border
final searchOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12.r)),
  borderSide: const BorderSide(
    color: AppColor.inputBorder,
    width: 1,
  ),
);
