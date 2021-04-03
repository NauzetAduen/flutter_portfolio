import '../model/work.dart';

class WorkRepository {
  static List<Work> getWorks() {
    return [
      Work(
        title: "Coding Challenge",
        date: "mar, 2021",
        description: """
        This was an interesting challenge where I had to to create an application that allows users to: search for places in a location given by the user using the Foursquare API, view their search results and view the individual details of each search result.
 I use Clean Architecture by Uncle Bob adapted by ResoCoder, and I use package by feature as a code organisation.
 I used the 'TDD metodology' to test each layer of the app but I didn't implement any UI test.
 This app have a typeahead search functionality for search venues close to your location. After that shows a list of venues, which you can also see in a Google Map. You can check a detailed view of each venue with more information.
 You also have the ability to like a venue, using the shared_preferences package for it, so its stored in your phone.""",
        chips: [
          "Flutter",
          "Mobile Dev",
          "Dart",
          "Google Maps",
          "API REST",
          "TTD"
        ],
        url: "https://github.com/NauzetAduen/coding-challenge",
        imageURL: "coding_challenge.png",
      ),
      Work(
        title: "Portfolio re-design",
        date: "mar, 2021",
        description: """
        Redesign of my portfolio. Completely change the idea and theme. Learnt about hiearchy, colors and proportions.

        Simplified the navigation through the portfolio, making animations instuitive for the visitor.

        Adds better showcase images for each project and remove non important projects.
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
        title: "University Final Degree Project",
        date: "apr, 2020",
        description: """
        After trying Flutter and Android native, I choose the first to be the framework in my final degree project. At first, I explored the possibility of a an app for deaf people, helping them in phonecalls, where the app would translate into text. I kind of make it work in a couple of days, so I tought the scope of the app was not big enough."
        
        Finally I decided to develop a project called “Mobile app and backend to manage hiking trails”, where the user could create hiking trails, share, like and rate them. You could also create events in those trails. The full description can be found in the oficial document in the repository.
        
        The backend was Firebase, which helped me to create a completely reactive app.
          
          I Learned Flutter framework, the Dart Programming Language and the cloud firestore ecosystem.
          
          I also used multiples technologies like Google+ Auth, Firestore Auth, Google Maps, Json serialization and NoSQL, Reactive Programming, etc.
        """,
        chips: [
          "Flutter",
          "Mobile Dev",
          "Dart",
          "Google Maps",
          "Firebase",
        ],
        url: "",
        imageURL: "diabetiary.png",
      ),
    ];
  }
}
