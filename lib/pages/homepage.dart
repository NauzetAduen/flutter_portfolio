import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
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
                  child: Center(
                    child: Text(
                      "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.\nI'm from the Canary Islands, Spain.",
                      style: Styles.welcomeText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
