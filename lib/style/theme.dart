import 'package:flutter/material.dart';

//Colors
final Color orange = Colors.deepOrange;
final Color blue = Colors.lightBlue;

//TextTheme with all the textStyles
final TextTheme texttheme = TextTheme(
    headline1: TextStyle(
      //navBarElement
      fontWeight: FontWeight.bold,
      fontFamily: 'Nunito',
      fontSize: 18,
      color: Colors.black,
    ),
    headline2: TextStyle(
      //navBarElementBold
      fontWeight: FontWeight.bold,
      fontFamily: 'Nunito',
      fontSize: 18,
      color: orange,
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.double,
    ),
    headline3: TextStyle(
      //wellcome text
      letterSpacing: 2,
      height: 2,
      fontWeight: FontWeight.bold,
      fontFamily: 'Nunito',
      fontSize: 32,
      color: Colors.black,
    ),
    headline4: TextStyle(
      //rotating welcome text
      letterSpacing: 3,
      height: 2,
      fontWeight: FontWeight.bold,
      fontFamily: 'ArchitectsDaughter',
      fontSize: 36,
      color: blue,
    ),
    headline5: TextStyle(
        //experienceSmallDesc
        letterSpacing: 2,
        height: 2,
        fontWeight: FontWeight.normal,
        fontFamily: 'Nunito',
        fontSize: 24,
        color: Colors.black),
    headline6: TextStyle(
      //expItemTimeLineDesktDate
      fontFamily: 'ArchitectsDaughter',
      height: 2,
      fontSize: 30,
      color: orange,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
    ),
    subtitle1: TextStyle(
      //nau title
      fontWeight: FontWeight.bold,
      fontFamily: 'Nunito',
      fontSize: 28,
      color: Colors.white,
      // letterSpacing: 3,
    ),
    subtitle2: TextStyle(
      //expItemTimeLineDeskTitle
      fontFamily: 'Nunito',
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    button: TextStyle(
      //error
      fontWeight: FontWeight.bold,
      fontSize: 84,
      letterSpacing: 4,
      color: orange,
      fontFamily: 'ArchitectsDaughter',
    ));

//final ThemeData
final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  textTheme: texttheme,
);
