import 'package:flutter/material.dart';
import 'dart:js' as js;

class IconButtonLinked extends StatelessWidget {
  const IconButtonLinked({
    Key key,
    @required this.url,
    this.picture,
  }) : super(key: key);

  final String url;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset("assets/images/$picture.png"),
      onPressed: () {
        js.context.callMethod("open", ["$url"]);
      },
    );
  }
}
