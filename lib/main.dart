import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';

import 'widgets/customTopNavBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[CustomTopNavBar()],
          )),
    );
  }
}
