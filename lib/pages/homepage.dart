import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';
import 'package:flutter_portfolio/widgets/home/IconButtonLinked.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String githubURL = "https://github.com/NauzetAduen/";
    String stackOverFlowURL = "https://stackoverflow.com/users/6155494/nauzet";
    String linkdinURL =
        "https://www.linkedin.com/in/nauzet-aduen-hern%C3%A1ndez-hern%C3%A1ndez-036b4118b/";
    String redditURL = "https://www.reddit.com/user/Nauzet/";
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
                        CircleAvatar(
                          child:
                              Image.asset("assets/images/profilepicture.png"),
                          radius: 70,
                          backgroundColor: Colors.blueGrey,
                        ),
                        Text(
                          "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.",
                          style: Styles.welcomeText,
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButtonLinked(url: githubURL, picture: "github"),
                            IconButtonLinked(
                                url: stackOverFlowURL,
                                picture: "stackoverflow"),
                            IconButtonLinked(
                                url: linkdinURL, picture: "linkdin"),
                            IconButtonLinked(url: redditURL, picture: "reddit"),
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
