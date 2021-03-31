import 'package:flutter/material.dart';
import '../pages/landing_page.dart';
import '../pages/personal_page.dart';
import '../pages/work_page.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case LandingPage.routeName:
        return AnimatedPageROuteBuilder(
          routeName: routeName,
          destination: LandingPage(),
        );
      case PersonalPage.routeName:
        return AnimatedPageROuteBuilder(
            routeName: routeName, destination: const PersonalPage());

      case WorkPage.routeName:
        return AnimatedPageROuteBuilder(
            routeName: routeName, destination: WorkPage());

      default:
        return AnimatedPageROuteBuilder(
          routeName: LandingPage.routeName,
          destination: LandingPage(),
        );
    }
  }
}

class AnimatedPageROuteBuilder extends PageRouteBuilder {
  final Widget destination;
  final String routeName;

  AnimatedPageROuteBuilder({@required this.destination, this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (context, animation, another) => destination,
            transitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (context, animation, another, child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.decelerate);
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
}
