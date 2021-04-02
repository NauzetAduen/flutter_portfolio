import 'package:flutter_portfolio/model/personal.dart';

class PersonalRepository {
  static Personal getPersonal() => Personal(
        welcome: "Hi, I'm Nauzet, I enjoy building things.",
        personalPoints: getPersonalPoints(),
      );

  static List<PersonalPoint> getPersonalPoints() => [
        PersonalPoint(title: "Education", points: [
          "Computer Engineer at ULPGC",
          "Software Engineer intensification",
        ]),
        PersonalPoint(title: "Tech", points: getStack()),
        PersonalPoint(title: "Soft", points: getSoft()),
        PersonalPoint(title: "Interest", points: getInterests()),
      ];

  static List<String> getStack() => [
        "CrossPlatform Dev with Flutter",
        "Android native development",
        "Dev with Firebase, Api REST",
        "Postgress,MySQL, Firebase, Hive",
        "TTD and Clean Architecture",
        "UI/UX design experience",
        "Agile methodologies, SCRUM"
      ];
  static List<String> getSoft() => [
        "Able to work remotely",
        "Eager to learn new things",
        "Teamwork as principle",
        "Critical thinking",
        "Stupidly optimistic",
      ];

  static List<String> getInterests() =>
      ["Multidisciplinary teams", "Medical apps development"];
}
