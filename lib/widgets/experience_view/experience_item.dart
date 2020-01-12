import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/experience_view/exp_item_mobile.dart';
import 'package:flutter_portfolio/widgets/experience_view/exp_item_tablet_desktop.dart';

class ExperienceItem {
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

  ExperienceItemTabletDesktop toDesktop() {
    return ExperienceItemTabletDesktop(
      date: date,
      title: title,
      desc: desc,
      url: url,
      linkMessage: linkMessage,
      chips: chips,
      image: image,
    );
  }

  ExperienceItemMobile toMobile() {
    return ExperienceItemMobile(
      date: date,
      title: title,
      desc: desc,
      url: url,
      linkMessage: linkMessage,
      chips: chips,
      image: image,
    );
  }
}
