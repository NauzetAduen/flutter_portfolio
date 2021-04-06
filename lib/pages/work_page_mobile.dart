import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/url_link.dart';

import '../model/work.dart';
import '../repository/work_repository.dart';
import '../widgets/links_row.dart';
import '../widgets/mobile_app_bar.dart';

class WorkPageMobile extends StatefulWidget {
  const WorkPageMobile();

  @override
  _WorkPageMobileState createState() => _WorkPageMobileState();
}

class _WorkPageMobileState extends State<WorkPageMobile> {
  List<Work> works;
  @override
  void initState() {
    super.initState();
    works = WorkRepository.getWorks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: MobileAppBar(),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
          children: [
            for (var work in works)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                child: Column(
                  children: [
                    Text(work.title,
                        style: Theme.of(context).textTheme.subtitle1),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            'assets/images/${work.imageURL}',
                          ),
                        ),
                      ),
                    ),
                    UrlLink(url: work.url),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Text(
                        work.description,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            LinksRow()
          ],
        ))));
  }
}
