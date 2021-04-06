import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/max_width_container.dart';

import '../utils/animation.dart';
import '../widgets/links_column.dart';
import '../widgets/navigation_bar.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = "/";

  const LandingPage();
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation<Offset> _titleAnimation;
  Animation<Offset> _subtitleAnimation;
  Animation<Offset> _barAnimation;
  Animation<Offset> _linkColumnAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: animationDuration)
      ..forward();

    _titleAnimation = getTweenAnimation(beginX: -10, controller: _controller);
    _subtitleAnimation = getTweenAnimation(beginX: 10, controller: _controller);
    _barAnimation = getTweenAnimation(beginY: 200, controller: _controller);
    _linkColumnAnimation =
        getTweenAnimation(beginY: -200, controller: _controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: MaxWidthContainer(
          child: Stack(
            children: [
              Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SlideTransition(
                      position: _titleAnimation,
                      child: Text("nau",
                          style: Theme.of(context).textTheme.headline1)),
                  SlideTransition(
                    position: _subtitleAnimation,
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'flutter',
                            style: Theme.of(context).textTheme.headline2),
                        TextSpan(
                            text: 'dev',
                            style: Theme.of(context).textTheme.headline3),
                        TextSpan(
                            text: 'eloper',
                            style: Theme.of(context).textTheme.headline2),
                      ]),
                    ),
                  )
                ],
              )),
              Positioned(
                  top: 30,
                  right: 30,
                  child: SlideTransition(
                    position: _barAnimation,
                    child: NavigationBar(),
                  )),
              SlideTransition(
                  position: _linkColumnAnimation, child: LinksColumn())
            ],
          ),
        ),
      );
}
