import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../../style/styles.dart';

class ExperienceItemMobile extends StatelessWidget {
  final String date;
  final String title;
  final String desc;
  final String url;
  final String linkMessage;
  final List<Chip> chips;
  final String image;

  const ExperienceItemMobile(
      {Key key,
      this.date,
      this.title,
      this.desc,
      this.url,
      this.linkMessage,
      this.chips,
      this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
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
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage("assets/images/previews/$image"),
              ),
            ),
            Text(
              desc,
              textAlign: TextAlign.justify,
              style: Styles.experienceDescMobile,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 3,
                    children: chips,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.link,
                      color: Colors.lightBlue,
                      size: 25,
                    ),
                    onPressed: () => js.context.callMethod("open", ["$url"]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
