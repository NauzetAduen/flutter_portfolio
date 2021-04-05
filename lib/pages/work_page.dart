import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/work.dart';
import 'package:flutter_portfolio/repository/work_repository.dart';
import 'package:flutter_portfolio/utils/constrains.dart';
import 'package:flutter_portfolio/widgets/links_column.dart';
import 'package:flutter_portfolio/widgets/max_width_container.dart';
import 'package:flutter_portfolio/widgets/navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

const double padding = 60;

class WorkPage extends StatefulWidget {
  static const String routeName = "/work";

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  List<Work> works;
  double width;
  double height;
  ScrollController scrollController;
  bool isNotAtEnd = true;
  int currentStep = 1;
  @override
  void initState() {
    super.initState();
    works = WorkRepository.getWorks();
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
    return Scaffold(
      body: MaxWidthContainer(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: height * 0.8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemExtent: kMaxWidth - padding * 2,
                  controller: scrollController,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: width - padding * 2,
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Text(works[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    works[index].date.toUpperCase(),
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                works[index].description,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                                textAlign: TextAlign.justify,
                                              ),
                                              Wrap(
                                                alignment: WrapAlignment.center,
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.center,
                                                children: [
                                                  for (var chip
                                                      in works[index].chips)
                                                    Chip(
                                                      shape: StadiumBorder(
                                                          side: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .scaffoldBackgroundColor)),

                                                      // padding:
                                                      //     EdgeInsets.symmetric(horizontal: ),
                                                      label: Text(
                                                        chip,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor),
                                                      ),
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .focusColor,
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 32),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 20,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              child: Image.asset(
                                                'images/${works[index].imageURL}',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
                  },
                  itemCount: works.length,
                  // physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 30,
              child: NavigationBar(),
            ),
            LinksColumn(),
            Positioned(
              bottom: 10,
              child: StepProgressIndicator(
                totalSteps: works.length,
                selectedColor: Theme.of(context).accentColor,
                currentStep: currentStep,
              ),
            ),
            Positioned(
              bottom: 30,
              child: IconButton(
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: FaIcon(isNotAtEnd
                      ? FontAwesomeIcons.chevronRight
                      : FontAwesomeIcons.chevronLeft),
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    setState(() {
                      currentStep =
                          currentStep == works.length ? 1 : currentStep + 1;
                    });
                    return scrollController.animateTo(
                        isNotAtEnd
                            ? scrollController.position.pixels +
                                kMaxWidth -
                                padding * 2
                            : 0,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOutQuint);
                  }),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
