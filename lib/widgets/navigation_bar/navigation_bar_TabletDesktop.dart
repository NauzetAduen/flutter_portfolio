import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/navbar_item_list.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarLogo(),
        Wrap(children: NavBarItemList.list),
      ],
    );
  }
}
