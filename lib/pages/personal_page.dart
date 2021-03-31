import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/animation.dart';
import 'package:flutter_portfolio/widgets/home_willpop_scope.dart';
import 'package:flutter_portfolio/widgets/navigation_bar.dart';
import '../model/personal.dart';
import '../repository/personal_repository.dart';

class PersonalPage extends StatefulWidget {
  static const String routeName = "/personal";

  const PersonalPage();
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  Personal personal;
  @override
  void initState() {
    super.initState();
    personal = PersonalRepository.getPersonal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            right: 30,
            child: NavigationBar(),
          ),
          const Center(
            child: Text(PersonalPage.routeName),
          ),
        ],
      ),
      // ),
    );
  }
}
