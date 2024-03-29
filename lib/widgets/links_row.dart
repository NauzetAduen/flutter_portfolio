import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../repository/url_repository.dart';

const double iconSize = 18;

class LinksRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          color: Theme.of(context).focusColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.githubSquare,
                    color: Theme.of(context).primaryColor,
                    size: iconSize,
                  ),
                  onPressed: () async {
                    await launch(UrlRepository().getUrl('github'));
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Theme.of(context).primaryColor,
                    size: iconSize,
                  ),
                  onPressed: () async {
                    await launch(UrlRepository().getUrl('linkedin'));
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.stackOverflow,
                    color: Theme.of(context).primaryColor,
                    size: iconSize,
                  ),
                  onPressed: () async {
                    await launch(UrlRepository().getUrl('stackoverflow'));
                  }),
              IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Theme.of(context).colorScheme.secondary,
                    size: iconSize,
                  ),
                  onPressed: () async {
                    await launch("mailto:${UrlRepository().getUrl('mail')}");
                  }),
            ],
          ),
        ),
      ));
}
