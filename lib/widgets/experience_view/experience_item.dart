import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'dart:js' as js;

class ExperienceItem extends StatelessWidget {
  final String date;
  final String title;
  final String desc;
  final String url;
  final String linkMessage;
  final List<Chip> chips;
  final String image;

  const ExperienceItem(
      {this.date,
      this.title,
      this.desc,
      this.url,
      this.linkMessage,
      this.chips,
      this.image});

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
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: Styles.experienceDesc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(
                  image: AssetImage("assets/images/$image"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: chips,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.link,
                    color: Colors.lightBlue,
                    size: 35,
                  ),
                  onPressed: () => js.context.callMethod("open", ["$url"]))
            ],
          )
        ],
      ),
    );
  }
}
