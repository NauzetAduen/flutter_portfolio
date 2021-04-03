import 'package:flutter/material.dart';
import 'package:flutter_portfolio/repository/url_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const double iconSize = 18;

class LinksColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            color: Theme.of(context).focusColor,
            child: Column(
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
                      FontAwesomeIcons.solidPaperPlane,
                      color: Theme.of(context).accentColor,
                      size: iconSize,
                    ),
                    onPressed: () async {
                      await launch("mailto:${UrlRepository().getUrl('mail')}");
                    }),
              ],
            ),
          ),
        ),
      );
}
