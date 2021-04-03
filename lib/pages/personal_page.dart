import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/personal.dart';
import '../repository/personal_repository.dart';
import '../utils/animation.dart';
import '../widgets/links_column.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/point_column.dart';

class PersonalPage extends StatefulWidget {
  static const String routeName = "/personal";

  const PersonalPage();
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage>
    with SingleTickerProviderStateMixin {
  Personal personal;
  List<String> welcomeMessage;
  String pattern = "building";
  double width;
  double height;
  bool isNotAtEnd = true;
  ScrollController scrollController;
  Animation<Offset> arrowAnimation;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..repeat(reverse: true);
    // ..reverse();
    arrowAnimation = getTweenAnimation(
        beginY: -1, controller: animationController, cubic: Curves.easeOut);
    personal = PersonalRepository.getPersonal();
    welcomeMessage = personal.welcome.split(pattern);
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        setState(() {
          isNotAtEnd = false;
        });
      }
      if (scrollController.offset == 0) {
        setState(() {
          isNotAtEnd = true;
        });
      }
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 4)),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: welcomeMessage.first,
                        style: Theme.of(context).textTheme.headline6),
                    TextSpan(
                        text: pattern,
                        style: Theme.of(context).textTheme.headline3),
                    TextSpan(
                        text: welcomeMessage.last,
                        style: Theme.of(context).textTheme.headline6),
                  ]),
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: scrollController,
            itemBuilder: (context, index) {
              return Align(
                alignment:
                    index.isEven ? Alignment.centerLeft : Alignment.centerRight,
                child: SizedBox(
                    height: height / 2,
                    width: width / 2,
                    child: Center(
                        child: PointColumn(
                            width: width,
                            personalPoint: personal.personalPoints[index]))),
              );
            },
            itemCount: personal.personalPoints.length,
          ),
          Positioned(
            top: 30,
            right: 30,
            child: NavigationBar(),
          ),
          Positioned(
            bottom: 10,
            child: SlideTransition(
              position: arrowAnimation,
              child: IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  isNotAtEnd
                      ? FontAwesomeIcons.chevronDown
                      : FontAwesomeIcons.chevronUp,
                  color: Theme.of(context).accentColor,
                  size: 30,
                ),
                onPressed: () => scrollController.animateTo(
                    isNotAtEnd ? scrollController.position.maxScrollExtent : 0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutQuint),
              ),
            ),
          ),
          LinksColumn(),
        ],
      ),
    );
  }
}
