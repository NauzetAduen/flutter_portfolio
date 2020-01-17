import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/CustomCircleAvatar.dart';
import 'package:flutter_portfolio/widgets/home/social_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class HomeTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Container(
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  CustomCircleAvatar(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.\nYou can contact me: nauzet.aduen@gmail.com",
                    style: Styles.welcomeText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SocialList()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
