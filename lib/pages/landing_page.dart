import 'package:flutter/material.dart';

const animationDuration = Duration(milliseconds: 3000);

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  AnimationController _controller;

  Animation<Offset> _titleAnimation;
  Animation<Offset> _subtitleAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: animationDuration)
      ..forward();

    _titleAnimation = _getTweenAnimation(startPoint: -10);
    _subtitleAnimation = _getTweenAnimation(startPoint: 10);
  }

  Animation<Offset> _getTweenAnimation({@required double startPoint}) {
    return Tween<Offset>(
      begin: Offset(startPoint, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1, curve: Curves.easeOutQuint)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SlideTransition(
              position: _titleAnimation,
              child: Text("nau", style: Theme.of(context).textTheme.headline1)),
          SlideTransition(
              position: _subtitleAnimation,
              child: Text("flutter developer",
                  style: Theme.of(context).textTheme.headline2))
        ],
      )),
    );
  }
}
