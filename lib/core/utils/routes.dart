import 'package:doc_doc/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String detail = '/detail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
