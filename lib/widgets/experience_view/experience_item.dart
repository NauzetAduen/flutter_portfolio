import 'package:flutter/material.dart';

class ExperienceItem {
  final String date;
  final String title;
  final String smallDesc;
  final String desc;
  final String url;
  final String linkMessage;
  final List<Chip> chips;
  final String image;
  final bool completed;

  const ExperienceItem({
    this.date,
    this.title,
    this.smallDesc,
    this.desc,
    this.url,
    this.linkMessage,
    this.chips,
    this.image,
    this.completed,
  });
}
