import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart';

class MobileAppBar extends PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: FaIcon(
              FontAwesomeIcons.user,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () => onClick(context, "/personal"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: FaIcon(
              FontAwesomeIcons.laptop,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () => onClick(context, "/work"),
          ),
        ),
      ],
    );
  }

  void onClick(BuildContext context, String pattern) {
    print("HELLO $pattern");
    final String url = window.location.href;
    if (!url.endsWith(pattern)) {
      Navigator.pushNamed(context, pattern);
    }
    // url.endsWith("/work")
    //     ? null
    //     : () {
    //         Navigator.pushNamed(context, "/work");
    //       };
  }
}
