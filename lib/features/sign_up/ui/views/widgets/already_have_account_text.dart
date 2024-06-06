import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/utils/routes.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center, // Moved from hot_fix/fix_auth_ui
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginView);
              },
          ),
        ],
      ),
    );
  }
}
