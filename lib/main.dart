
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/app_theme/app_theme.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/app_constants.dart';
import 'package:whatsapp_ui_demo/src/view/screen/home_screen/home_screen.dart';

void main(){
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      home: const HomeScreen(),
      theme: AppThemeData.lightTheme,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
