import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/work.dart';
import 'package:flutter_portfolio/repository/work_repository.dart';
import 'package:flutter_portfolio/widgets/links_column.dart';
import 'package:flutter_portfolio/widgets/navigation_bar.dart';

class WorkPage extends StatefulWidget {
  static const String routeName = "/work";

  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  List<Work> works;
  double width;
  double height;
  @override
  void initState() {
    super.initState();
    works = WorkRepository.getWorks();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            // width: width,
            height: height * 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                      width: width - 120,
                      // height: height * 0.8,
                      child: Center(
                          child: SingleChildScrollView(
                        child: SizedBox(
                          height: height * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Text(works[index].title,
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                              ),
                              Text(
                                works[index].date.toUpperCase(),
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Row(
                                children: [
                                  Expanded(
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
                      )));
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
        ],
      ),
      // ),
    );
  }
}
