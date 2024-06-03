

import 'package:doc_doc/core/utils/constants/colors.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/appbar_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_field_theme.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.grey,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme:  AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
