import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  static const String routeName = "/work";

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("WORK")));
  }
}
