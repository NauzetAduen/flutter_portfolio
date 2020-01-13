import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/experience_view/experience_item.dart';

class ExperienceItemList {
  static List<ExperienceItem> list = [
    ExperienceItem(
      date: "01/2017 – 12/2017",
      title:
          "Collaboration scholarship at ULPGC’s Vice-chancellor for students and employability",
      desc: "I was an intern for my univeristy for a whole year, where I had a wide range of responsabilities, from making phone calls to answering emails, write official documents, etc...\n" +
          "From a tech standpoint I did a few things:\nWebs maintenance with Joomla and vanilla PHP, mostly adding articles to our university pages.\n" +
          "MySQL Databases maintenance, backups, and that sort of things.\n" +
          "Website development for an university event with Wordpress, now closed. The hardest part was a page where I developed a GoogleMap in JavaScript where the invited chancellors could pick their hotel and then it would draw a route depeding of your choosen transport system.\n",
      linkMessage: "16 jornadas Sue - Closed",
      url: "http://16jornadasdesue.ulpgc.es/",
      chips: [
        Chip(
          backgroundColor: Colors.lime,
          label: Text(
            "Web Dev",
            style: Styles.chipBlack,
          ),
        ),
        Chip(
          backgroundColor: Colors.deepPurple,
          label: Text(
            "JavaScript",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          label: Text(
            "Joomla",
            style: Styles.chipWhite,
          ),
          backgroundColor: Color(0xff1b63a2),
        ),
        Chip(
          backgroundColor: Color(0xff8892BF),
          label: Text(
            "PHP",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          label: Text(
            "WordPress",
            style: Styles.chipWhite,
          ),
          backgroundColor: Color(0xff0073aa),
        ),
        Chip(
          backgroundColor: Color(0xffe97b00),
          label: Text(
            "MySQL",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Colors.red,
          label: Text(
            "Google Maps",
            style: Styles.chipWhite,
          ),
        ),
      ],
      image: "16jornadassue.png",
    ),
    ExperienceItem(
      date: "08/2018 – 08/2018",
      title: "DebControl - First native Android App",
      desc:
          "First native Android app, where you have a list of your debts.\nLearned a bunch of concepts: LiveData, ViewModel, Room, etc...",
      url: "https://github.com/NauzetAduen/DebtControl",
      linkMessage: "",
      image: "android.png",
      chips: [
        Chip(
          backgroundColor: Color(0xff99cc00),
          label: Text(
            "Android",
            style: Styles.chipBlack,
          ),
        ),
        Chip(
          label: Text(
            "Mobile Dev",
            style: Styles.chipWhite,
          ),
          backgroundColor: Colors.indigo,
        )
      ],
    ),
    ExperienceItem(
      date: "09/2018 – 12/2018",
      title: "External university intership at inerza.com",
      desc:
          "Improve and increase test coverage in a mobile app\nTested app’s CORE and API REST behind it\nGit, Testing, RESTful web services, Mobile development, Jenkins, SonarQube, Tomcat, DBeaver, ARC, …",
      url: "https://play.google.com/store/apps/details?id=com.inerza.miplaza",
      linkMessage: "PlayStore - miPlaza",
      image: "miplaza.png",
      chips: [
        Chip(
          backgroundColor: Colors.yellow,
          label: Text(
            "API REST",
            style: Styles.chipBlack,
          ),
        ),
        Chip(
          backgroundColor: Colors.green,
          label: Text(
            "Testing",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          label: Text(
            "Mobile Dev",
            style: Styles.chipWhite,
          ),
          backgroundColor: Colors.indigo,
        )
      ],
    ),
    ExperienceItem(
        date: "01/2019 - 02/2019",
        title: "Simple Debt Manager - First Flutter App",
        desc: "Small project to learn flutter where you can manage your debts. Flutter version of my first Android App.\n" +
            "In this project you can create debts and store them in a small sqlite database.\nDebts will be listed colored by state. Fully paid, not paid or partialy paid.\nYou have a tab where you get a summary of your debts with graphs.\nMore screenshots in the readme.md in the repository.",
        url: "https://github.com/NauzetAduen/simple-debt-manager",
        linkMessage: "",
        image: "simpledebtmanager.png",
        chips: [
          Chip(
            backgroundColor: Color(0xff1389FD),
            label: Text(
              "Flutter",
              style: Styles.chipWhite,
            ),
          ),
          Chip(
            backgroundColor: Colors.indigo,
            label: Text(
              "Mobile Dev",
              style: Styles.chipWhite,
            ),
          ),
          Chip(
            backgroundColor: Color(0xff1C2834),
            label: Text(
              "Dart",
              style: Styles.chipWhite,
            ),
          ),
          Chip(
            backgroundColor: Colors.blueGrey,
            label: Text(
              "SQLite",
              style: Styles.chipWhite,
            ),
          ),
        ]),
    ExperienceItem(
      date: "04/2019 – 07/2019",
      title: "University final degree project",
      desc:
          "Developed a “Mobile app and backend to manage hiking trails”\nLearned Flutter framework, Dart Programming Language and cloud firestore ecosystem\nGoogle+ Auth, Firestore Auth, Google Maps, Json serialization and NoSQL, Reactive Programming, …",
      url: "https://github.com/NauzetAduen/hiking_app_public",
      linkMessage: "HikingApp - Github (Private)",
      image: "hiking.png",
      chips: [
        Chip(
          backgroundColor: Colors.red,
          label: Text(
            "Google Maps",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Colors.indigo,
          label: Text(
            "Mobile Dev",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Color(0xff1389FD),
          label: Text(
            "Flutter",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Color(0xff1C2834),
          label: Text(
            "Dart",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Color(0xffffcb2b),
          label: Text(
            "Firebase",
            style: Styles.chipBlack,
          ),
        ),
      ],
    ),
    ExperienceItem(
      date: "08/2019 – 10/2019",
      title: "Personal project GroceryListApp",
      desc: "Developed a personal Project Grocery list app with Flutter",
      url: "https://github.com/NauzetAduen/grocery_list_app",
      linkMessage: "GroceryList App - Github",
      image: "grocery.png",
      chips: [
        Chip(
          backgroundColor: Colors.indigo,
          label: Text(
            "Mobile Dev",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Color(0xff1389FD),
          label: Text(
            "Flutter",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Color(0xffffcb2b),
          label: Text(
            "Firebase",
            style: Styles.chipBlack,
          ),
        ),
      ],
    ),
    ExperienceItem(
      date: "11/2019 – Present",
      title: "Flutter portfolio",
      desc:
          "A small project to create my portfolio in Flutter and learn Flutter web.",
      url: "https://github.com/NauzetAduen/flutter_portfolio",
      linkMessage: "Portfolio - Github",
      image: "flutterweb.png",
      chips: [
        Chip(
          backgroundColor: Color(0xff1389FD),
          label: Text(
            "Flutter Web",
            style: Styles.chipWhite,
          ),
        ),
        Chip(
          backgroundColor: Colors.lime,
          label: Text(
            "Web Dev",
            style: Styles.chipBlack,
          ),
        )
      ],
    )
  ].reversed.toList();
}
