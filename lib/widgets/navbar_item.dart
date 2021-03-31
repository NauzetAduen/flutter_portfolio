import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/animation.dart';

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

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    animation = getTweenAnimation(endY: -0.5, controller: controller);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
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
          child: SlideTransition(
            position: animation,
            child: Text(widget.title,
                style: _hovering
                    ? const TextStyle(color: Colors.white, fontSize: 30)
                    : const TextStyle(color: Colors.red, fontSize: 30)),
          ),
        ),
      );
}
