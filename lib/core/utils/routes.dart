import 'package:doc_doc/features/login/ui/views/login_view.dart';
import 'package:doc_doc/features/onboarding/onboarding_screen.dart';
import 'package:doc_doc/features/sign_up/ui/views/sign_up_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String onBoarding = '/';

  static const String loginView = '/login_view';
  static const String signUpView = '/sign_up_view';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // this arguments is for passing data from one screen to another
   // final arguments = settings.arguments;

    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case signUpView:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      default:
        // error page
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('${settings.name} not found')),
                  appBar: AppBar(title: const Text('Error')),
                ));
    }
  }
}
