import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/doc_doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // to fix screenUtil issue with sp and rpx
  await ScreenUtil.ensureScreenSize();
  runApp(const DocDocApp());
}
// flutter run --release -t lib/main_development.dart --flavor development
// flutter build apk --flavor development -t lib/main_development.dart