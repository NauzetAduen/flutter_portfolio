import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class ExperienceItem extends StatelessWidget {
  final String date;
  final String title;
  final String desc;
  final String url;

  const ExperienceItem({this.date, this.title, this.desc, this.url});

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
              date,
              style: Styles.experienceDate,
            ),
          ),
          Text(
            title,
            style: Styles.experienceTitle,
            textAlign: TextAlign.justify,
          ),
          Text(
            desc,
            textAlign: TextAlign.justify,
            style: Styles.experienceDesc,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              url,
              style: Styles.experienceURL,
            ),
          )
        ],
      ),
    );
  }
}
