import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/personal.dart';
import 'package:flutter_portfolio/pages/landing_page.dart';
import 'package:flutter_portfolio/pages/personal_page.dart';
import 'package:flutter_portfolio/pages/work_page.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case LandingPage.routeName:
        return CustomMaterialPageRoute(
          routeName,
          LandingPage(),
        );
      case PersonalPage.routeName:
        return CustomMaterialPageRoute(routeName, PersonalPage());

      case WorkPage.routeName:
        return CustomMaterialPageRoute(routeName, WorkPage());

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
