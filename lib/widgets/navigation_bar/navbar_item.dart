import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/router.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Provider.of<RouteName>(context, listen: false).updateName(text);
          return Navigator.pushReplacementNamed(context, _getRoute());
        },
        child: Text('$text',
            style: isSelected
                ? Theme.of(context).textTheme.headline2
                : Theme.of(context).textTheme.headline1),
      ),
    );
  }

  String _getRoute() {
    return text == "home" ? "/" : "/$text";
  }
}
