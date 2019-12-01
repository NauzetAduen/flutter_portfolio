import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String githubURL = "https://github.com/NauzetAduen/";
    String stackOverFlowURL = "https://stackoverflow.com/users/6155494/nauzet";
    String linkdinURL =
        "https://www.linkedin.com/in/nauzet-aduen-hern%C3%A1ndez-hern%C3%A1ndez-036b4118b/";
    return CenteredWidget(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.",
                          style: Styles.welcomeText,
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset("assets/images/github.png"),
                              onPressed: () {
                                js.context.callMethod("open", ["$githubURL"]);
                              },
                            ),
                            IconButton(
                              icon: Image.asset(
                                  "assets/images/stackoverflow.png"),
                              onPressed: () {
                                js.context
                                    .callMethod("open", ["$stackOverFlowURL"]);
                              },
                            ),
                            IconButton(
                              icon: Image.asset("assets/images/linkdin.png"),
                              onPressed: () {
                                js.context.callMethod("open", ["$linkdinURL"]);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
