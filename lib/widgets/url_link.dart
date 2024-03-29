import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLink extends StatelessWidget {
  final String url;

  const UrlLink({@required this.url});
  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) return Container();
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            primary: Theme.of(context).colorScheme.secondary,
            elevation: 10,
          ),
          onPressed: () => launch(url),
          icon: FaIcon(
            FontAwesomeIcons.externalLinkAlt,
            color: Theme.of(context).scaffoldBackgroundColor,
            size: 16,
          ),
          label: Text(
            "Visit",
            style: Theme.of(context).textTheme.caption,
          )),
    );
  }
}
