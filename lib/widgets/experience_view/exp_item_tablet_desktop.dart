import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/experience_view/RowDescImage.dart';
import 'dart:js' as js;

class ExperienceItemTabletDesktop extends StatelessWidget {
  final String date;
  final String title;
  final String desc;
  final String url;
  final String linkMessage;
  final List<Chip> chips;
  final String image;

  const ExperienceItemTabletDesktop(
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              date,
              style: Styles.experienceDate,
            ),
          ),
          RowDescImage(desc: desc, image: image),
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
