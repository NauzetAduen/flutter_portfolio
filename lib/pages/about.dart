import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Center(
                child: Text("About"),
              ))
            ],
          )),
    );
  }
}
