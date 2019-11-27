import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/centered_widget.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ListView(
                  children: ExperienceItemList.list,
                ),
              )
            ],
          )),
    );
  }
}
