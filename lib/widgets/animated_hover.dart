import 'package:flutter/material.dart';

import 'navbar_item.dart';

class AnimatedHover extends StatelessWidget {
  const AnimatedHover(
      {@required this.animation,
      @required this.widget,
      @required this.hovering,
      @required this.title});

  final Animation<Offset> animation;
  final NavBarItem widget;
  final bool hovering;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Text(title,
          style: hovering
              ? Theme.of(context).textTheme.headline3
              : Theme.of(context).textTheme.headline4),
    );
  }
}
