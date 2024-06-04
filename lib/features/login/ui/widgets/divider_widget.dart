import 'package:doc_doc/core/utils/constants/colors.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: ColorsManager.darkGrey,
            thickness: .8,
            indent: 8,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: TextStyles.font12GrayRegular,
        ),
        const Flexible(
          child: Divider(
            color: ColorsManager.darkGrey,
            thickness: .8,
            indent: 5,
            endIndent: 8,
          ),
        ),
      ],
    );
  }
}
