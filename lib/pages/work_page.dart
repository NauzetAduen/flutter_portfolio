import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/work.dart';
import 'package:flutter_portfolio/repository/work_repository.dart';
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
          ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                  width: width,
                  height: height,
                  child: Center(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(works[index].title,
                            style: Theme.of(context).textTheme.bodyText2),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      works[index].description,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      textAlign: TextAlign.justify,
                                    ),
                                    Row(
                                      children: [
                                        for (var chip in works[index].chips)
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 2),
                                            child: Chip(
                                              // elevation: 2,
                                              // shadowColor: Colors.grey[60],
                                              shape: StadiumBorder(
                                                  side: BorderSide(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor)),

                                              // padding:
                                              //     EdgeInsets.symmetric(horizontal: ),
                                              label: Text(
                                                chip,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Theme.of(context)
                                                        .primaryColor),
                                              ),
                                              backgroundColor:
                                                  Theme.of(context).focusColor,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Image.asset(
                                'images/${works[index].imageURL}',
                              ),
                            )),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            works[index].date,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  )));
            },
            itemCount: works.length,
            // physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
          ),
          Positioned(
            top: 30,
            right: 30,
            child: NavigationBar(),
          ),
        ],
      ),
      // ),
    );
  }
}
