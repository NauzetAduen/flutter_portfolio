import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  static const String routeName = "/me";

  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("ME")));
  }
}
