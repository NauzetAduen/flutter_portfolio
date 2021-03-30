import 'package:flutter/material.dart';

class HomeWillPopScope extends WillPopScope {
  final BuildContext context;
  final Widget widget;

  HomeWillPopScope(this.context, this.widget)
      : super(
            onWillPop: () => Navigator.of(context).pushReplacementNamed("/"),
            child: widget);
}
