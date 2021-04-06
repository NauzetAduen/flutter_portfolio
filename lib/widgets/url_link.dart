import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLink extends StatelessWidget {
  final String url;

  const UrlLink({@required this.url});
  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) return Container();
    return IconButton(
        iconSize: 16,
        icon: FaIcon(
          FontAwesomeIcons.externalLinkAlt,
          color: Theme.of(context).accentColor,
        ),
        onPressed: () => launch(url));
  }
}
