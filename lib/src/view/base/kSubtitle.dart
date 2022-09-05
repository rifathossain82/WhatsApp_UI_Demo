import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';

class kSubtitle extends StatelessWidget {
  kSubtitle({Key? key, required this.subtitle}) : super(key: key);

  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: h3.copyWith(
        color: kSubtitleColor,
      ),
      maxLines: 1,
    );
  }
}
