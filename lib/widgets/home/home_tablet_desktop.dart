import 'package:flutter/material.dart';

import '../../style/styles.dart';
import '../CustomCircleAvatar.dart';
import '../navigation_bar/navigation_bar.dart';
import 'social_list.dart';

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
                    "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.",
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
