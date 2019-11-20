import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';
import 'package:flutter_portfolio/widgets/customTopNavBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              CustomTopNavBar(),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              )
            ],
          )),
    );
  }
}
