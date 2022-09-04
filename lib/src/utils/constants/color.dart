import 'package:flutter/material.dart';

Color kPrimaryTextColor = Colors.white;
Color kSecondaryTextColor = Colors.white;

Color kWhite=Colors.white;
Color kBlack=Colors.black;
Color kGrey=Colors.grey;
Color kBlue=Colors.blue;
Color kMainColor=const Color(0xFF039D55);


Map<int, Color> color =
  const {
    50:Color.fromRGBO(3, 156, 84, .1),
    100:Color.fromRGBO(3, 156, 84, .2),
    200:Color.fromRGBO(3, 156, 84, .3),
    300:Color.fromRGBO(3, 156, 84, .4),
    400:Color.fromRGBO(3, 156, 84, .5),
    500:Color.fromRGBO(3, 156, 84, .6),
    600:Color.fromRGBO(3, 156, 84, .7),
    700:Color.fromRGBO(3, 156, 84, .8),
    800:Color.fromRGBO(3, 156, 84, .9),
    900:Color.fromRGBO(3, 156, 84, 1),
  };

MaterialColor customAppColor = MaterialColor(0xFF039D55, color);
