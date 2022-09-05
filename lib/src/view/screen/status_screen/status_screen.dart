import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

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
