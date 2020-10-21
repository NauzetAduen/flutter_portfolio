import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/router.dart';
import 'package:provider/provider.dart';

import '../../style/styles.dart';

class NavBarItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  const NavBarItem({
    Key key,
    this.text,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(isSelected);
    bool isSel = isSelected;
    if (isSel == null) isSel = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Provider.of<RouteName>(context, listen: false).updateName(text);
          return Navigator.pushReplacementNamed(context, _getRoute());
        },
        child: Text('$text',
            style: isSel
                ? Styles.navBarElementBold
                : Styles.navBarElementUnSelected),
      ),
    );
  }

  String _getRoute() {
    return text == "home" ? "/" : "/$text";
  }
}
