import 'package:doc_doc/core/utils/constants/constants.dart';
import 'package:doc_doc/core/utils/routes.dart';
import 'package:doc_doc/core/utils/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
          title: Constants.appName,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              ThemeMode.system, // Automatically switches between light and dark
          initialRoute: Routes.onBoarding,
          onGenerateRoute: Routes.generateRoute,
          debugShowCheckedModeBanner: false),
    );
  }
}
