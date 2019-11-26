import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_item.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarLogo(),
        Wrap(
          children: <Widget>[
            NavBarElement('Me'),
            NavBarElement('Experience'),
            NavBarElement('Projects'),
          ],
        )
      ],
    );
  }
}
