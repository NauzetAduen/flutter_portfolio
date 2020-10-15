import 'package:flutter/material.dart';

import '../widgets/about_view/about_item.dart';

class AboutItemList {
  static List<Widget> list = [
    AboutItem(
      title: "Education 2013-2019",
      info: [
        "Computer Engineer at University of Las Palmas de Gran Canaria, Spain",
        "Software Engineer intensification"
      ],
    ),
    AboutItem(
      title: "Technical skills",
      info: [
        "Crossplatform development experience with Flutter",
        "Basic Android native development",
        "Testing, Git, differents backends (nosql, api rest)",
      ],
    ),
    AboutItem(
      title: "Personal skills",
      info: [
        "Communicative, passionate, reliable",
        "Able to work on my own (Remote)",
        "Eage to learn new things"
      ],
    ),
    AboutItem(
      title: "Interests",
      info: [
        "Flutter and mobile development",
        "Clean Architecture, TDD",
        "Improve programming skills"
      ],
    ),
    AboutItem(
      title: "Objetives",
      info: [
        "Junior position in Flutter or mobile development",
        "Remote if possible"
      ],
    ),
  ];
}
