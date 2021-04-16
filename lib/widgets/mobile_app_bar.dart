import 'package:flutter/material.dart';

import 'mobile_nav_item.dart';

class MobileAppBar extends PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: const [
        MobileNavBarItem(destination: "personal"),
        MobileNavBarItem(destination: "work")
      ],
    );
  }
}
