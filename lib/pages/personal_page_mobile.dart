import 'package:flutter/material.dart';

import '../model/personal.dart';
import '../repository/personal_repository.dart';
import '../widgets/central_message.dart';
import '../widgets/links_row.dart';
import '../widgets/mobile_app_bar.dart';

class PersonalPageMobile extends StatefulWidget {
  const PersonalPageMobile();

  @override
  _PersonalPageMobileState createState() => _PersonalPageMobileState();
}

class _PersonalPageMobileState extends State<PersonalPageMobile> {
  Personal personal;
  List<String> welcomeMessage;
  String pattern = "building";
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    personal = getPersonal();
    welcomeMessage = personal.welcome.split(pattern);
    scrollController = ScrollController();
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
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CentralMessage(welcomeMessage: welcomeMessage, pattern: pattern),
            const SizedBox(height: 20),
            for (var personalPoint in personal.personalPoints)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text(personalPoint.title,
                        style: Theme.of(context).textTheme.bodyText2),
                    Container(
                      height: 2,
                      width: 100,
                      color: Theme.of(context).focusColor,
                    ),
                    for (var points in personalPoint.points)
                      Text(points, style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
            LinksRow()
          ],
        ),
      )),
    );
  }
}
