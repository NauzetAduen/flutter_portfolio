import 'package:flutter/material.dart';

import '../../utils/url_lists.dart';
import 'IconButtonLinked.dart';

class SocialList extends StatelessWidget {
  const SocialList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            width: 3,
            color: Colors.orange,
          )),
        ),
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButtonLinked(url: UrlList.list[0], picture: "github"),
            IconButtonLinked(url: UrlList.list[1], picture: "stackoverflow"),
            IconButtonLinked(url: UrlList.list[2], picture: "linkdin"),
            IconButtonLinked(url: UrlList.list[3], picture: "reddit"),
            IconButtonLinked(url: UrlList.list[4], picture: "email"),
          ],
        ),
      ),
    );
  }
}
