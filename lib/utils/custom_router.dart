import 'package:flutter/material.dart';

import '../pages/landing_page.dart';
import '../pages/landing_page_mobile.dart';
import '../pages/personal_page.dart';
import '../pages/personal_page_mobile.dart';
import '../pages/work_page.dart';
import '../pages/work_page_2.dart';
import '../pages/work_page_mobile.dart';
import '../widgets/responsive_layout.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;
    switch (routeName) {
      case LandingPage.routeName:
        return AnimatedPageROuteBuilder(
          routeName: routeName,
          destination: const ResponsiveLayout(
              desktop: LandingPage(), mobile: LandingPageMobile()),
        );
      case PersonalPage.routeName:
        return AnimatedPageROuteBuilder(
          routeName: routeName,
          destination: const ResponsiveLayout(
              desktop: PersonalPage(), mobile: PersonalPageMobile()),
        );

      case WorkPage.routeName:
        return AnimatedPageROuteBuilder(
          routeName: routeName,
          destination: const ResponsiveLayout(
              desktop: WorkPage(), mobile: WorkPageMobile()),
        );
      case WorkPage2.routeName:
        return AnimatedPageROuteBuilder(
            routeName: routeName,
            destination: const ResponsiveLayout(
                desktop: WorkPage2(), mobile: WorkPageMobile()));
      default:
        return AnimatedPageROuteBuilder(
          routeName: LandingPage.routeName,
          destination: const ResponsiveLayout(
              desktop: LandingPage(), mobile: LandingPageMobile()),
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
            transitionDuration: const Duration(milliseconds: 1000),
            transitionsBuilder: (context, animation, another, child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.decelerate);
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
}
