import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar.dart';

class WorkPage extends StatefulWidget {
  static const String routeName = "/work";

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 30,
              right: 30,
              child: NavigationBar(),
            ),
            const Center(
              child: Text("WOrkah"),
            ),
          ],
        ),
        // ),
      );
}
