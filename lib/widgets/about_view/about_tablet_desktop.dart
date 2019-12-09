import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/about_item_list.dart';
import 'package:flutter_portfolio/utils/navbar_item_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_logo.dart';

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
