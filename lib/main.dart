import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/landing_page.dart';
import 'package:flutter_portfolio/style/app_theme.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'nau',
        theme: themeData,
        // initialRoute: "/",
        home: LandingPage(),
      );
}
