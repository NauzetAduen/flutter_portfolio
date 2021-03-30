import 'package:flutter_portfolio/model/personal.dart';

class PersonalRepository {
  static Personal getPersonal() => Personal(
        name: "Nauzet Aduen",
        location: "Las Palmas de Gran Canaria, Canary Islands, Spain",
        job: "Flutter developer",
        personalPoints: getPersonalPoints(),
      );

  static List<PersonalPoint> getPersonalPoints() => [
        PersonalPoint(title: "Education", points: [
          "Computer Engineer at University of Las Palmas de Gran Canaria, Spain",
          "Software Engineer intensification",
        ]),
        PersonalPoint(title: "Tech", points: getStack()),
        PersonalPoint(title: "Soft", points: getSoft()),
        PersonalPoint(title: "Interest", points: getInterests()),
      ];

  static List<String> getStack() => [
        "crossPlatform development with Flutter",
        "android native development",
        "full Stack development with Firebase, Api REST, Hive, etc",
        "TTD and Clean Architecture experience",
        "UI/UX design basic experience",
        "experience with agile methodologies, SCRUM"
      ];
  static List<String> getSoft() => [
        "able to work remotely",
        "eager to learn new things",
        "teamwork",
        "critical thinking",
        "stupidly optimistic",
      ];

  static List<String> getInterests() =>
      ["multidisciplinary teams", "medical apps development"];
}
