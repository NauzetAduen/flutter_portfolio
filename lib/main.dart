import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nauzet, Portfolio',
      onGenerateRoute: Router.generateRoute,
      initialRoute: "/experience",
    );
  }
}
