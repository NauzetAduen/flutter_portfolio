import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/about_item_list.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
          body: Column(
        children: <Widget>[
          NavigationBar(),
          Expanded(
            child: ListView(
              children: AboutItemList.list,
            ),
          ),
        ],
      )),
    );
  }
}
