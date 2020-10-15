import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../../style/styles.dart';
import 'experience_item.dart';

class ExperienceItemMobile extends StatelessWidget {
  final ExperienceItem item;
  const ExperienceItemMobile({this.item});

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
                item.date,
                style: Styles.experienceDate,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                height: 150,
                width: 150,
                image: AssetImage("assets/images/previews/${item.image}"),
              ),
            ),
            Text(
              item.desc,
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
                    children: item.chips,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.link,
                      color: Colors.lightBlue,
                      size: 25,
                    ),
                    onPressed: () =>
                        js.context.callMethod("open", ["${item.url}"]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
