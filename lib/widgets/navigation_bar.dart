import 'package:flutter/material.dart';

import 'navbar_item.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 100.0,
        child: Row(
          children: const [
            NavBarItem(title: "personal"),
            SizedBox(width: 30),
            NavBarItem(title: "work"),
          ],
        ),
      );
}
