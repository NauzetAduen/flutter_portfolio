import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class ExperienceItem extends StatelessWidget {
  final String date;
  final String title;
  final String desc;
  final String url;
  final List<Chip> chips;

  const ExperienceItem(
      {this.date, this.title, this.desc, this.url, this.chips});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Wrap(
                children: chips,
                spacing: 5,
              ),
              Text(
                "URL",
                style: Styles.experienceURL,
              ),
            ],
          )
        ],
      ),
    );
  }
}
