import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'theme/app_theme.dart';
import 'utils/custom_router.dart';

void main() {
  setPathUrlStrategy();
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nau',
      theme: themeData,
      initialRoute: "/",
      onGenerateRoute: CustomRouter.generateRoute,
    );
  }
}
