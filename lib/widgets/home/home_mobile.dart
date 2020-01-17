import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/home/social_list.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Text(
            "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.\nYou can contact me: nauzet.aduen@gmail.com",
            style: Styles.welcomeTextMobile,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
          ),
          SocialList()
        ],
      ),
    );
  }
}
