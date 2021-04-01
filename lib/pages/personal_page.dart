import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/personal.dart';
import '../repository/personal_repository.dart';
import '../widgets/navigation_bar.dart';

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
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    // if(){}
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   if (scrollController.hasClients) print(scrollController.position);
    // });
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
                  border: Border.all(color: Colors.white, width: 4)),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: welcomeMessage.first,
                        style: Theme.of(context).textTheme.headline6),
                    TextSpan(
                        text: pattern,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: welcomeMessage.last,
                        style: Theme.of(context).textTheme.headline6),
                  ]),
                ),
              ),
            ),
          ),
          ListView.builder(
            controller: scrollController,
            itemBuilder: (context, index) {
              return Align(
                alignment:
                    index.isEven ? Alignment.centerLeft : Alignment.centerRight,
                child: SizedBox(
                    height: height / 2,
                    width: width / 2,
                    child: Center(
                        child: RoundedPoint(
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
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: FaIcon(
                  isNotAtEnd
                      ? FontAwesomeIcons.chevronDown
                      : FontAwesomeIcons.chevronUp,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () => scrollController.jumpTo(
                    isNotAtEnd ? scrollController.position.maxScrollExtent : 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedPoint extends StatelessWidget {
  const RoundedPoint({
    Key key,
    @required this.personalPoint,
    @required this.width,
  }) : super(key: key);

  final PersonalPoint personalPoint;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4)),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(personalPoint.title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.bold)),
            Container(
              height: 2,
              width: 200,
              color: Colors.white,
            ),
            for (var points in personalPoint.points)
              Text(points,
                  textAlign: TextAlign.center,
                  style: width < 600
                      ? Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 14)
                      : Theme.of(context).textTheme.bodyText1)
          ],
        )));
  }
}
