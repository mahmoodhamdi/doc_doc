import 'package:doc_doc/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Inter',
    disabledColor: ColorsManager.grey,
    brightness: Brightness.light,
    primaryColor: ColorsManager.mainBlue,
    scaffoldBackgroundColor: ColorsManager.white,
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Inter',
    disabledColor: ColorsManager.grey,
    brightness: Brightness.dark,
    primaryColor: ColorsManager.mainBlue,
    scaffoldBackgroundColor: ColorsManager.black,
  );
}
