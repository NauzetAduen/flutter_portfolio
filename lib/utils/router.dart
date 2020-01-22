import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/about.dart';
import 'package:flutter_portfolio/pages/error_page.dart';
import 'package:flutter_portfolio/pages/experience.dart';
import 'package:flutter_portfolio/pages/homepage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // print(settings.name);
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/experience':
        return MaterialPageRoute(builder: (_) => Experience());
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
