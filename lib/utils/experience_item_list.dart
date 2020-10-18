import 'package:flutter/material.dart';
import '../style/styles.dart';
import '../widgets/experience_view/experience_item.dart';

class ExperienceItemList {
  static List<ExperienceItem> list = [
    ExperienceItem(
      // date: "01/2017 – 12/2017",
      date: "JAN, 2017",
      title: "Collaboration scholarship",
      smallDesc:
          "College scholarship at ULPGC, Web development in Wordpress and PHP.",
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
      completed: true,
    ),
    ExperienceItem(
      // date: "08/2018 – 08/2018",
      date: "AUG, 2018",
      title: "DebtControl",
      smallDesc: "First native Android app, a simple Debts manager.",
      desc:
          "First native Android app, where you have a list of your debts.\nLearned a bunch of concepts: LiveData, ViewModel, Room, etc...\nJava was the programming language used.",
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
        ),
        Chip(
            label: Text(
              "Java",
              style: Styles.chipWhite,
            ),
            backgroundColor: Colors.redAccent)
      ],
      completed: true,
    ),
    ExperienceItem(
      // date: "09/2018 – 12/2018",
      date: "SEP, 2018",
      title: "External university internship",
      smallDesc: "Intership at Inerza, test coverage of existing app",
      desc:
          "My university have a program where you have to do an internship in a company for 300 hours. Inerza.com choose me to help them improve and increase the test coverage in a mobile app, made with the codename one framework.\nMy main role was testing the app’s CORE and the API REST behind the app.\nImproved a lot in certain fields like Git, Testing, RESTful web services and Mobile development in general.\nWe did use a lot of software like Jenkins, SonarQube, Tomcat, DBeaver, ARC, …",
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
        ),
        Chip(
          label: Text(
            "Java",
            style: Styles.chipWhite,
          ),
          backgroundColor: Colors.redAccent,
        ),
      ],
      completed: true,
    ),
    ExperienceItem(
      // date: "01/2019 – 02/2019",
      date: "JAN, 2019",
      title: "Simple Debt Manager",
      smallDesc: "First Flutter app, a simple debt manager.",
      desc: "Small project to learn flutter where you can manage your debts. Flutter version of my first Android App 'DebtControl'.\n" +
          "In this project you can create debts and store them in a small sqlite database.\nDebts will be listed colored by state. Fully paid, not paid or partialy paid.\nYou also can check a summary of your debts with graphs.\nMore screenshots in the readme.md in the repository.",
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
      ],
      completed: true,
    ),
    ExperienceItem(
      // date: "04/2019 – 07/2019",
      date: "APR, 2019",
      title: "University final degree project",
      smallDesc: "Hiking app with Flutter, GoogleMaps and Firebase.",
      desc: "After trying Flutter and Android native, I choose the first to be the framework in my final degree project." +
          "At first, I explored the possibility of a an app for deaf people, helping them in phonecalls, where the app would translate into text. I kind of make it work in a couple of days, so I tought the scope of the app was not big enough.\n" +
          "Finally I decided to develop a project called “Mobile app and backend to manage hiking trails”, where the user could create hiking trails, share, like and rate them. You could also create events in those trails. The full description can be found in the oficial document in the repository.\n" +
          "The backend was Firebase, which helped me to create a completely reactive app.\n" +
          "I Learned Flutter framework, the Dart Programming Language and the cloud firestore ecosystem\nI also used multiples technologies like Google+ Auth, Firestore Auth, Google Maps, Json serialization and NoSQL, Reactive Programming, …",
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
      completed: true,
    ),
    ExperienceItem(
      // date: "08/2019 – 10/2019",
      date: "AUG, 2019",
      title: "GroceryListApp",
      smallDesc: "Flutter app to manage grocery lists with Firebase.",
      desc: "A simple grocery list app. It allows you to manage groups and have differents grocery lists. (Family, friends, X's Birthday party, etc.) It also allow you to add new products, organized by category.\n" +
          "The app is completely reactive. One of the most interesting things of the app is the phone authentification.\nYou can see more in the readme.md in the repository.\nNow with 15 stars and 7 forks in github!",
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
      completed: true,
    ),
    ExperienceItem(
      // date: "11/2019 – 01/2020",
      date: "NOV, 2019",
      title: "Flutter portfolio",
      smallDesc: "Personal portfolio made with Flutter web.",
      desc: "I created a simple web to learn what Flutter web was about. If we combine that with the constant idea of having a portfolio, this is what we got.\n" +
          "A simple 'minimalistic' portfolio. Somewhere in the near future I will redesign it and improve it, maybe adding a blog.",
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
      completed: true,
    ),
    ExperienceItem(
      // date: "03/2020 – Present",
      date: "MAR, 2020",
      title: "Diabetiary",
      smallDesc: "Flutter app to simplify diabetes care.",
      desc:
          "Diabetiary, an app for diabetic patients. This app will simplify the user interface in order to help the user to understand how the illness is working, in order to fix it or keep it right.\nWork In Progress.",
      url: "https://bitbucket.org/NauzetAduen/diabetiary",
      linkMessage: "Diabetiary repository",
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
          backgroundColor: Color(0xffe3b31c),
          label: Text(
            "Hive",
            style: Styles.chipWhite,
          ),
        ),
      ],
      image: "diabetiary.png",
      completed: false,
    ),
    ExperienceItem(
      // date: "10/2020 – Present",
      date: "OCT, 2020",
      title: "Portfolio re-design",
      smallDesc: "Redesigned portfolio with timelines and animations.",
      desc:
          "Re-design of my portfolio. Adding a timeline in the experience view, adding small animations and improving scrolling.\nWork In Progress.",
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
      completed: false,
    ),
  ].reversed.toList();
}
