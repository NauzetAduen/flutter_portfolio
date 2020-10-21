import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/about.dart';
import '../pages/error_page.dart';
import '../pages/experience.dart';
import '../pages/homepage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return pageRouteBuilder(HomePage());
      case '/experience':
        return pageRouteBuilder(Experience());
      case '/about':
        return pageRouteBuilder(About());
      default:
        return pageRouteBuilder(ErrorPage());
    }
  }
}

PageRouteBuilder pageRouteBuilder(Widget destination) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, another) {
        return destination;
      },
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

class RouteName extends ChangeNotifier {
  String name;
  RouteName(this.name);

  void updateName(String newName) {
    name = newName;
    notifyListeners();
  }
}
