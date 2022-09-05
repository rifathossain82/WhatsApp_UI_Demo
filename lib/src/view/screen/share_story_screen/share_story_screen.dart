import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';

class ShareStoryScreen extends StatelessWidget {
  const ShareStoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Coming soon',
        style: h2.copyWith(
          color: kMainColor,
        ),
      ),
    );
  }
}
