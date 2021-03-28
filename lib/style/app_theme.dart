import 'package:flutter/material.dart';

const Color backGroundGreyColor = Color(0xff38383C);
const Color lightGray = Color(0xffA5A5A5);
const String ptSans = "PTsans";
const String ptSerif = "PTserif";
const TextTheme textTheme = TextTheme(
  headline1: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: ptSerif,
      fontSize: 144,
      color: Colors.white,
      height: 0.5),
  headline2: TextStyle(
      fontFamily: ptSans,
      fontSize: 40,
      letterSpacing: -2,
      color: lightGray,
      height: 0.6),
);
ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: backGroundGreyColor,
  textTheme: textTheme,
);
