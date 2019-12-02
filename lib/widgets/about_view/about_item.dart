import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class AboutItem extends StatelessWidget {
  final String title;
  final String info;

  const AboutItem({Key key, this.title, this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: Styles.aboutTitle,
            ),
          ),
          Text(
            info,
            style: Styles.aboutInfo,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
