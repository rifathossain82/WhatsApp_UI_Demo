import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';

class kTitle extends StatelessWidget {
  kTitle({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: h2.copyWith(
          color: kTitleColor
      ),
    );
  }
}
