import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/utils/url_lists.dart';
import 'package:flutter_portfolio/widgets/home/IconButtonLinked.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Text(
            "Hello, welcome to my portfolio.(In progress) \nI'm Nauzet, a mobile and Flutter developer.",
            style: Styles.welcomeTextMobile,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButtonLinked(url: UrlList.list[0], picture: "github"),
              IconButtonLinked(url: UrlList.list[1], picture: "stackoverflow"),
              IconButtonLinked(url: UrlList.list[2], picture: "linkdin"),
              IconButtonLinked(url: UrlList.list[3], picture: "reddit"),
            ],
          )
        ],
      ),
    );
  }
}
