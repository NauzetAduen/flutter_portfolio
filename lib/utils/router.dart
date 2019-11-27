import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/experience.dart';
import 'package:flutter_portfolio/pages/homepage.dart';
import 'package:flutter_portfolio/pages/projects.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/experience':
        return MaterialPageRoute(builder: (_) => Experience());
      case '/projects':
        return MaterialPageRoute(builder: (_) => Projects());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
