import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const double iconSize = 18;

class LinksColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Container(
          color: Theme.of(context).focusColor,
          child: Hero(
            tag: 'links',
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
                      await launch("https://github.com/NauzetAduen");
                    }),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Theme.of(context).primaryColor,
                      size: iconSize,
                    ),
                    onPressed: () async {
                      await launch(
                          "https://www.linkedin.com/in/nauzet-aduen-hern%C3%A1ndez-hern%C3%A1ndez-036b4118b/");
                    }),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.stackOverflow,
                      color: Theme.of(context).primaryColor,
                      size: iconSize,
                    ),
                    onPressed: () async {
                      await launch(
                          "https://stackoverflow.com/users/6155494/nauzet");
                    }),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.solidPaperPlane,
                      color: Theme.of(context).accentColor,
                      size: iconSize,
                    ),
                    onPressed: () async {
                      await launch("mailto:nauzet.aduen@gmail.com");
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
