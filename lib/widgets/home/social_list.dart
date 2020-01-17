import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/url_lists.dart';
import 'package:flutter_portfolio/widgets/home/IconButtonLinked.dart';

class SocialList extends StatelessWidget {
  const SocialList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButtonLinked(url: UrlList.list[0], picture: "github"),
        IconButtonLinked(url: UrlList.list[1], picture: "stackoverflow"),
        IconButtonLinked(url: UrlList.list[2], picture: "linkdin"),
        IconButtonLinked(url: UrlList.list[3], picture: "reddit"),
        IconButtonLinked(url: UrlList.list[4], picture: "email"),
      ],
    );
  }
}
