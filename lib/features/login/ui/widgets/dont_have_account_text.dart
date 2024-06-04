import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/utils/routes.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpView);
              },
          ),
        ],
      ),
    );
  }
}