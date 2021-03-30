import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/landing_page.dart';
import 'package:flutter_portfolio/pages/me_page.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    final routeName = settings.name;
    switch (routeName) {
      case LandingPage.routeName:
        return CustomMaterialPageRoute(
          routeName,
          LandingPage(),
        );
      case MePage.routeName:
        return CustomMaterialPageRoute(routeName, MePage());

      default:
        return CustomMaterialPageRoute(
          LandingPage.routeName,
          LandingPage(),
        );
    }
  }
}

class CustomMaterialPageRoute extends MaterialPageRoute {
  final String routeName;
  final Widget destination;

  CustomMaterialPageRoute(this.routeName, this.destination)
      : super(
            builder: (_) => destination,
            settings: RouteSettings(name: routeName));
}
