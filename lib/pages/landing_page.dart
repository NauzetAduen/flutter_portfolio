import 'package:flutter/material.dart';

const animationDuration = Duration(milliseconds: 3000);

class LandingPage extends StatefulWidget {
  static const String routeName = "/";
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
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

    // _controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     Future.delayed(const Duration(seconds: 2), () {
    //       _controller.reverse();
    //     });
    //   }
    // });

    _titleAnimation = _getTweenAnimation(beginX: -10);
    _subtitleAnimation = _getTweenAnimation(beginX: 10);
    // _barAnimation = _getTweenAnimation(beginX: beginX, beginY: beginY, endX: endX, endY: endY, begin: begin, end: end)
    _barAnimation = _getTweenAnimation(beginY: 200);
    _linkColumnAnimation = _getTweenAnimation(beginY: -200);
  }

  Animation<Offset> _getTweenAnimation(
      {double beginX = 0.0,
      double beginY = 0.0,
      double endX = 0.0,
      double endY = 0.0,
      double begin = 0,
      double end = 1}) {
    return Tween<Offset>(
      begin: Offset(beginX, beginY),
      end: Offset(endX, endY),
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(begin, end, curve: Curves.easeOutQuint)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(color: Colors.white)),
                    TextSpan(
                        text: 'eloper',
                        style: Theme.of(context).textTheme.headline2),
                  ]),
                ),
                // child: Text("flutter developer",
                //     style: Theme.of(context).textTheme.headline2),
              )
            ],
          )),
          Positioned(
              top: 30,
              right: 30,
              child: SlideTransition(
                position: _barAnimation,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/me");
                      },
                      child: const Text(
                        "me",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/work");
                      },
                      child: const Text(
                        "work",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )),
          SlideTransition(
            position: _linkColumnAnimation,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  color: Colors.white,
                  child: Hero(
                    tag: 'links',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [Text("A"), Text("B")],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
