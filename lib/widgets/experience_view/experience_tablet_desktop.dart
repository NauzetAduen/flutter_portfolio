import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: ListView(
            children: ExperienceItemList.list,
          ),
        )
      ],
    );
  }
}
