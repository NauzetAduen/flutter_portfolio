import 'package:flutter/material.dart';

const Color backGroundGreyColor = Color(0xff38383C);
const Color lightGray = Color(0xffA5A5A5);
const String ptSans = "PTsans";
const String ptSerif = "PTserif";
const TextTheme textTheme = TextTheme(
    //nau landingpage
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: ptSerif,
        fontSize: 144,
        color: Colors.white,
        height: 0.5),
    //flutterdeveloper landingpage
    headline2: TextStyle(
        fontFamily: ptSans,
        fontSize: 42,
        letterSpacing: -2,
        color: lightGray,
        height: 0.6),
    //dev landingpage //nav item on hover
    headline3: TextStyle(
        fontFamily: ptSans,
        fontSize: 42,
        letterSpacing: -2,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        height: 0.6),
    // navbar
    headline4: TextStyle(
        fontFamily: ptSans,
        fontSize: 42,
        letterSpacing: -2,
        color: lightGray,
        fontWeight: FontWeight.bold,
        height: 0.6),
    //UNSELECTABLE
    headline5: TextStyle(
        decoration: TextDecoration.lineThrough,
        decorationStyle: TextDecorationStyle.wavy,
        decorationColor: Colors.white,
        fontFamily: ptSans,
        fontSize: 42,
        letterSpacing: -2,
        color: lightGray,
        fontWeight: FontWeight.bold,
        height: 0.6),
    //WELCOME message
    headline6: TextStyle(
      fontFamily: ptSans,
      fontSize: 36,
      color: Colors.white,
    ),
    //normal text in bubles
    bodyText1: TextStyle(
      fontFamily: ptSans,
      fontSize: 20,
      color: Colors.white,
    ));
ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: backGroundGreyColor,
  textTheme: textTheme,
);
