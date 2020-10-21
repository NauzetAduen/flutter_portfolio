import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_logo.dart';

import '../widgets/navigation_bar/navbar_item.dart';
import 'package:provider/provider.dart';
import 'router.dart';

class NavBarItemList {
  static List<Widget> list = [
    NavBarItem(
      text: "home",
      isSelected: false,
    ),
    NavBarItem(
      text: "experience",
      isSelected: false,
    ),
    NavBarItem(
      text: "about",
      isSelected: false,
    ),
  ];
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RouteName routeName = context.watch<RouteName>();
    int selectedIndex = setSelectedIndex(routeName.name);
    print(routeName.name);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Wrap(children: [
          NavBarItem(
            text: "home",
            isSelected: selectedIndex == 0,
          ),
          NavBarItem(
            text: "experience",
            isSelected: selectedIndex == 1,
          ),
          NavBarItem(
            text: "about",
            isSelected: selectedIndex == 2,
          ),
        ]),
      ],
    );
  }

  int setSelectedIndex(String name) {
    switch (name) {
      case "home":
        return 0;
      case "experience":
        return 1;
      case "about":
        return 2;
      default:
        return -1;
    }
  }
}
