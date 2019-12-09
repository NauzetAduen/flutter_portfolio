import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/experience_view/exp_item_mobile.dart';
import 'package:flutter_portfolio/widgets/experience_view/exp_item_tablet_desktop.dart';

import 'package:responsive_builder/responsive_builder.dart';

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
    return ScreenTypeLayout(
      mobile: ExperienceItemMobile(
        date: date,
        title: title,
        desc: desc,
        url: url,
        linkMessage: linkMessage,
        chips: chips,
        image: image,
      ),
      tablet: ExperienceItemTabletDesktop(
        date: date,
        title: title,
        desc: desc,
        url: url,
        linkMessage: linkMessage,
        chips: chips,
        image: image,
      ),
    );
  }
}
