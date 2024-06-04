import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/utils/theme/widget_themes/text_theme.dart';
import 'package:doc_doc/features/login/ui/widgets/divider_widget.dart';
import 'package:doc_doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/email_and_password.dart';
import 'package:doc_doc/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doc_doc/features/login/ui/widgets/sign_in_methods_section.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 30.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold),
              verticalSpace(8),
              Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular),
              verticalSpace(32),
              Column(children: [
                const EmailAndPassword(),
                verticalSpace(32),
                const DividerWidget(text: "Or sign in with"),
                verticalSpace(32),
                const SignInMethodsSection(),
                verticalSpace(32),
                const TermsAndConditionsText(),
                verticalSpace(16),
                const DontHaveAccountText(),
                const LoginBlocListener()
              ])
            ],
          ),
        ),
      ),
    ));
  }
}
