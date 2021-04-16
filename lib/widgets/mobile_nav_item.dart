import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class MobileNavBarItem extends StatelessWidget {
  final String destination;

  const MobileNavBarItem({Key key, @required this.destination})
      : super(key: key);
  void onClick(BuildContext context, String pattern) {
    final String url = window.location.href;
    if (!url.endsWith(pattern)) {
      Navigator.pushNamed(context, pattern);
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Align(
          child: GestureDetector(
            onTap: () => onClick(context, "/$destination"),
            child:
                Text(destination, style: Theme.of(context).textTheme.headline4),
          ),
        ),
      );
}
