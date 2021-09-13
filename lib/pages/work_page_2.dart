import 'package:flutter/material.dart';

import '../model/work.dart';
import '../repository/work_repository.dart';
import '../widgets/max_width_container.dart';
import '../widgets/work_column.dart';

class WorkPage2 extends StatefulWidget {
  static const String routeName = "/work2";

  const WorkPage2();

  @override
  _WorkPage2State createState() => _WorkPage2State();
}

class _WorkPage2State extends State<WorkPage2> {
  List<Work> works;
  double width;
  double height;
  double padding = 60;
  @override
  void initState() {
    super.initState();
    works = getWorks();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: MaxWidthContainer(
            child: Stack(alignment: Alignment.center, children: [
      SizedBox(
        // height: height * 0.8,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final Work currentWork = works[index];
                return WorkColumn(currentWork: currentWork);
              },
              itemCount: works.length,
            )),
      ),
    ])));
  }
}
