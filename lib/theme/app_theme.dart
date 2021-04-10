import 'package:flutter/material.dart';

const Color backGroundGreyColor = Color(0xff38383C);
// const Color lightGray = Color(0xffA5A5A5);
const Color lightGray = Color(0xff67676b);
const Color primaryColor = Color(0xffedeeff);
// const Color accentColor = Color(0xffcfa616);
const Color accentColor = Color(0xffA2D729);
// const Color white = Color(0xffedeeff);
const String ptSans = "PTsans";
const String arbutus = "arbutusSlab";
//TODO check new fonts
//Abril Display
//GT Alpina
//GT America
//Domaine Display
//BC Alphapipe
const TextTheme textTheme = TextTheme(
  //nau landingpage
  headline1: TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: arbutus,
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
    fontFamily: arbutus,
    fontSize: 22,
    color: accentColor,
    letterSpacing: 3,
    fontWeight: FontWeight.bold,
  ),
  //work title
  subtitle1: TextStyle(
    fontFamily: ptSans,
    fontSize: 36,
    letterSpacing: 4,
    color: primaryColor,
  ),
  subtitle2: TextStyle(
    fontFamily: ptSans,
    fontSize: 18,
    letterSpacing: 4,
    color: accentColor,
  ),
);

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: backGroundGreyColor,
  primaryColor: primaryColor,
  accentColor: accentColor,
  focusColor: lightGray,
  textTheme: textTheme,
);
