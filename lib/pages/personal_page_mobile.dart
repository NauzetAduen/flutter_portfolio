import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/personal.dart';
import 'package:flutter_portfolio/repository/personal_repository.dart';
import 'package:flutter_portfolio/widgets/central_message.dart';
import 'package:flutter_portfolio/widgets/mobile_app_bar.dart';

class PersonalPageMobile extends StatefulWidget {
  const PersonalPageMobile();

  @override
  _PersonalPageMobileState createState() => _PersonalPageMobileState();
}

class _PersonalPageMobileState extends State<PersonalPageMobile> {
  Personal personal;
  List<String> welcomeMessage;
  String pattern = "building";

  @override
  void initState() {
    super.initState();
    personal = PersonalRepository.getPersonal();
    welcomeMessage = personal.welcome.split(pattern);
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
              )
          ],
        ),
      )),
    );
  }
}
