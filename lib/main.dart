import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/doc_doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  setupGetIt();
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding());
  runApp(const DocDocApp());
}
