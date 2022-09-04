
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/app_theme/app_theme.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/app_constants.dart';
import 'package:whatsapp_ui_demo/src/view/screen/home_screen/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      home: const HomeScreen(),
      theme: AppThemeData.lightTheme,
    );
  }
}
