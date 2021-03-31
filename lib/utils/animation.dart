import 'package:flutter/material.dart';

const animationDuration = Duration(seconds: 3);
Animation<Offset> getTweenAnimation(
    {double beginX = 0.0,
    double beginY = 0.0,
    double endX = 0.0,
    double endY = 0.0,
    double begin = 0,
    double end = 1,
    AnimationController controller}) {
  return Tween<Offset>(
    begin: Offset(beginX, beginY),
    end: Offset(endX, endY),
  ).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(begin, end, curve: Curves.easeOutQuint)));
}
