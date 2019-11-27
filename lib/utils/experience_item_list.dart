import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/experience_view/experience_item.dart';

class ExperienceItemList {
  static List<Widget> list = [
    ExperienceItem(
      date: "01/2017 – 12/2017",
      title:
          "Collaboration scholarship at ULPGC’s Vice-chancellor for students and employability",
      desc:
          "Webs maintenance with Joomla and vanilla PHP\nMySQL Databases maintenance\nWebsite development for university event with Wordpress\n",
      url: "http://16jornadasdesue.ulpgc.es/",
    ),
    ExperienceItem(
      date: "09/2018 – 12/2018",
      title: "External university intership at inerza.com",
      desc:
          "Improve and increase test coverage in a mobile app\nTested app’s CORE and API REST behind it\nGit, Testing, RESTful web services, Mobile development, Jenkins, SonarQube, Tomcat, DBeaver, ARC, …",
      url: "https://play.google.com/store/apps/details?id=com.inerza.miplaza",
    ),
    ExperienceItem(
      date: "04/2019 – 07/2019",
      title: "University final degree project",
      desc:
          "Developed a “Mobile app and backend to manage hiking trails”\nLearned Flutter framework, Dart Programming Language and cloud firestore ecosystem\nGoogle+ Auth, Firestore Auth, Google Maps, Json serialization and NoSQL, Reactive Programming, …",
      url: "https://github.com/NauzetAduen/HikingApp",
    ),
    ExperienceItem(
      date: "08/2019 – 10/2019",
      title: "Personal project GroceryListApp",
      desc: "Developed a personal Project Grocery list app with Flutter",
      url: "https://github.com/NauzetAduen/grocery_list_app",
    ),
    ExperienceItem(
      date: "11/2019 – Present",
      title: "Flutter portfolio",
      desc:
          "A small project to create my portfolio in Flutter and learn Flutter web.",
      url: "https://github.com/NauzetAduen/flutter_portfolio",
    )
  ];
}
