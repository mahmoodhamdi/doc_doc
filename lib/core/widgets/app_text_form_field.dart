import 'package:doc_doc/core/utils/constants/colors.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(

      {super.key,
      required this.hintText,
      this.suffix,
      this.fillColor,
      this.hintStyle,
      this.inputTextStyle,
      this.enabledBorder,

      this.focusedBorder,
      this.errorBorder,
      this.validator,
      this.obscureText,
      this.contentPadding, this.keyboardType});

  final String hintText;
  final Widget? suffix;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: fillColor ?? ColorsManager.moreLighterGray,
        filled:  true, 
        hintStyle: hintStyle ?? TextStyles.font14LightGrayRegular,
        hintText: hintText,
        suffix: suffix,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 20.0.w),
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
        errorBorder: errorBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManager.error,
                width: 1.3,
              ),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
      ),
    );
  }
}
