import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

import '../../utils/about_item_list.dart';
import '../../utils/navbar_item_list.dart';
import '../navigation_bar/navbar_logo.dart';

class AboutTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: ListView.builder(
            itemCount: AboutItemList.list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AboutItemList.list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
