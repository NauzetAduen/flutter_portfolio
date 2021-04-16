import '../model/work.dart';

class WorkRepository {
  static List<Work> getWorks() {
    return [
      Work(
        title: "Code Challenge",
        date: "mar, 2021",
        description: """
Application which allows users to search for places using the Foursquare API, view their search results and view the individual details of each search result.

I use Clean Architecture by Uncle Bob adapted by ResoCoder, and I use package by feature as a code organisation.

I used the 'TDD metodology' to test each layer of the app but I didn't implement any UI test.

You have a typeahead pattern, uses geolocation, allows you to like venues and shows a GoogleMap view.
""",
        chips: [
          "Flutter",
          "Mobile Dev",
          "Dart",
          "Google Maps",
          "API REST",
          "TTD"
        ],
        url: "https://github.com/NauzetAduen/coding-challenge",
        imageURL: "code_challenge.png",
      ),
      Work(
        title: "Portfolio",
        date: "mar, 2021",
        description: """
A place to learn about myself and flutter web. 


Work in progress.
""",
        chips: [
          "Flutter Web",
          "Dart",
        ],
        url: "https://github.com/NauzetAduen/flutter_portfolio",
        imageURL: "flutter_portfolio.png",
      ),
      Work(
        title: "Diabetiary",
        date: "mar, 2020",
        description: """
Diabetiary, an app for diabetic patients. This app will simplify the user interface in order to help the user to understand how the illness is working, in order to fix it or keep it right.

It's based on a tipical diabetic journal that you show to your doctor.

Theme, fonts and general UI/UX design may change.

Work In Progress.
""",
        chips: [
          "Flutter",
          "Mobile Dev",
          "Dart",
          "Hive",
        ],
        url: "",
        imageURL: "diabetiary.png",
      ),
      Work(
        title: "TFG",
        date: "apr, 2020",
        description: """
This was my Final University Project.

Users can create hiking trails and events, share, like and rate them.
        
The backend was Firebase, which helped me to create a completely reactive app.
          
I Learned the Flutter framework, the Dart Programming Language and the cloud firestore ecosystem.
""",
        chips: [
          "Flutter",
          "Mobile Dev",
          "Dart",
          "Google Maps",
          "Firebase",
        ],
        url: "https://github.com/NauzetAduen/hiking_app_public",
        imageURL: "hiking_app.png",
      ),
    ];
  }
}
