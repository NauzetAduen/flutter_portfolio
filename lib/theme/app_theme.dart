import 'package:flutter/material.dart';

const Color backGroundGreyColor = Color(0xff38383C);
// const Color lightGray = Color(0xffA5A5A5);
const Color lightGray = Color(0xff67676b);
const Color primaryColor = Color(0xffedeeff);
const Color accentColor = Color(0xffcfa616);
// const Color white = Color(0xffedeeff);
const String ptSans = "PTsans";
const String ptSerif = "PTserif";
const TextTheme textTheme = TextTheme(
    //nau landingpage
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: ptSerif,
        fontSize: 144,
        color: primaryColor,
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
        color: accentColor,
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
        decorationColor: primaryColor,
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
      color: primaryColor,
    ),
    //normal text in bubles
    bodyText1: TextStyle(
      fontFamily: ptSans,
      fontSize: 20,
      color: primaryColor,
    ),
    //titles in bubles
    bodyText2: TextStyle(
      fontFamily: ptSerif,
      fontSize: 22,
      color: primaryColor,
      letterSpacing: 3,
      fontWeight: FontWeight.bold,
    ));
ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: backGroundGreyColor,
  primaryColor: primaryColor,
  accentColor: accentColor,
  focusColor: lightGray,
  textTheme: textTheme,
);
