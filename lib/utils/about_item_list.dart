import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_view/about_item.dart';

class AboutItemList {
  static List<Widget> list = [
    AboutItem(
      title: "Education 2013-2019",
      info:
          "Computer Engineer at University of Las Palmas de Gran Canaria, Spain\nSoftware Engineer intensification",
    ),
    AboutItem(
      title: "Technical skills",
      info:
          "Crossplatform development experience with Flutter\nBasic Android native development\nTesting, Git, differents backends (nosql, api rest)",
    ),
    AboutItem(
      title: "Personal skills",
      info:
          "Communicative, passionate, reliable\nAble to work on my own (Remote)\nEaget to learn new things",
    ),
    AboutItem(
      title: "Interests",
      info:
          "Flutter and mobile development\nClean Architecture, TDD\nImprove programming skills",
    ),
    AboutItem(
      title: "Objetives",
      info:
          "Junior position in Flutter or mobile development\nRemote if possible",
    ),
  ];
}
