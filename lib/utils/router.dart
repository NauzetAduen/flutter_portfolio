import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/about.dart';
import 'package:flutter_portfolio/pages/error_page.dart';
import 'package:flutter_portfolio/pages/experience.dart';
import 'package:flutter_portfolio/pages/homepage.dart';
import 'package:flutter_portfolio/widgets/experience_view/detailed_experience_dialog.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/experience':
        return MaterialPageRoute(builder: (_) => Experience());
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
      case '/detailed':
        final args = settings.arguments;
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => DetailedExperience(args), fullscreenDialog: true);
        }
        return MaterialPageRoute(builder: (_) => ErrorPage());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
