import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';

class kFloatingActionButton extends StatelessWidget {
  kFloatingActionButton(
      {Key? key,
        required this.onPressed,
        required this.child,
        this.tooltip,
        this.elevation,
      }) : super(key: key);

  Function onPressed;
  Widget child;
  String? tooltip;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed(),
      backgroundColor: kSecondaryColor,
      elevation: elevation ?? 0,
      tooltip: tooltip ?? '',
      child: child,
    );
  }
}
