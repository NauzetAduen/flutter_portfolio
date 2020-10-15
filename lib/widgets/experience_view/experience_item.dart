import 'package:flutter/material.dart';

import 'exp_item_mobile.dart';
import 'exp_item_tablet_desktop.dart';

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
      item: this,
    );
  }

  ExperienceItemMobile toMobile() {
    return ExperienceItemMobile(
      item: this,
    );
  }
}
