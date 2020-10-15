import 'package:flutter/material.dart';

import '../../utils/about_item_list.dart';
import '../../utils/navbar_item_list.dart';
import '../navigation_bar/navbar_logo.dart';

class AboutTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Wrap(children: NavBarItemList.list),
          ],
        ),
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
