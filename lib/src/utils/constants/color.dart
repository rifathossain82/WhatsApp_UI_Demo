import 'package:flutter/material.dart';

Color kPrimaryTextColor = Colors.white;
Color kSecondaryTextColor = Colors.black;

Color kTitleColor = const Color(0xff11181f);
Color kSubtitleColor = const Color(0xff6f767c);

Color kWhite=Colors.white;
Color kBlack=Colors.black;
Color kGrey=Colors.grey;
Color kBlue=Colors.blue;
Color kMainColor=const Color(0xff018068);
Color kSecondaryColor=const Color(0xff01a885);


Map<int, Color> color =
  const {
    50:Color.fromRGBO(1, 128, 104, .1),
    100:Color.fromRGBO(1, 128, 104, .2),
    200:Color.fromRGBO(1, 128, 104, .3),
    300:Color.fromRGBO(1, 128, 104, .4),
    400:Color.fromRGBO(1, 128, 104, .5),
    500:Color.fromRGBO(1, 128, 104, .6),
    600:Color.fromRGBO(1, 128, 104, .7),
    700:Color.fromRGBO(1, 128, 104, .8),
    800:Color.fromRGBO(1, 128, 104, .9),
    900:Color.fromRGBO(1, 128, 104, 1),
  };

MaterialColor customAppColor = MaterialColor(0xff018068, color);
