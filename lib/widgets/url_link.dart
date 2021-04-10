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
            primary: Theme.of(context).accentColor,
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
    // return IconButton(
    //     iconSize: 16,
    //     icon: Row(
    //       children: [
    //         Expanded(child: Text("Visit")),
    //         FaIcon(
    //           FontAwesomeIcons.externalLinkAlt,
    //           color: Theme.of(context).accentColor,
    //         ),
    //       ],
    //     ),
    //     onPressed: () => launch(url));
  }
}
