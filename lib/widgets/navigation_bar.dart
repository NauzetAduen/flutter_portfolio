import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/animation.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
}

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
  Widget build(BuildContext context) {
    return MouseRegion(
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
      // onHover: (isHover) =>
      //     isHover ? controller.forward() : controller.reverse(),
      child: SlideTransition(
        position: animation,
        child: Text(widget.title,
            style: _hovering
                ? const TextStyle(color: Colors.white, fontSize: 30)
                : const TextStyle(color: Colors.red, fontSize: 30)),
      ),
    );
  }
}
