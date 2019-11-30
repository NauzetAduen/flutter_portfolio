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
          Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/$image"),
                  )),
              Container(
                width: double.infinity,
                // color: Colors.red,
                child: Text(
                  desc,
                  textAlign: TextAlign.justify,
                  style: Styles.experienceDesc,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Wrap(
                children: chips,
                spacing: 5,
              ),
              GestureDetector(
                onTap: () {
                  js.context.callMethod("open", ["$url"]);
                },
                child: Text(
                  linkMessage,
                  style: Styles.experienceURL,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
