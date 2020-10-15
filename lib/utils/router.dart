import 'package:flutter/material.dart';

import '../pages/about.dart';
import '../pages/error_page.dart';
import '../pages/experience.dart';
import '../pages/homepage.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
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
