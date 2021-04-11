import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

import '../utils/animation.dart';
import 'animated_hover.dart';

class NavBarItem extends StatefulWidget {
  final String title;

  const NavBarItem({Key key, this.title}) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> animation;
  bool _hovering = false;
  String url = window.location.href;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    animation = getTweenAnimation(endY: -0.3, controller: controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!url.endsWith(widget.title)) {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/${widget.title}"),
        child: MouseRegion(
          onEnter: (_) {
            controller.forward();
            setState(() {
              _hovering = true;
            });
          },
          onExit: (_) {
            controller.reverse();
            setState(() {
              _hovering = false;
            });
          },
          child: AnimatedHover(
            animation: animation,
            widget: widget,
            hovering: _hovering,
            title: widget.title,
          ),
        ),
      );
    } else {
      return Text(
        widget.title,
        style: Theme.of(context).textTheme.headline5,
      );
    }
  }
}
