import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nauzet, Portfolio',
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: "/",
    );
  }
}
