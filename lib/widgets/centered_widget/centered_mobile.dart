import 'package:flutter/material.dart';

class CenteredWidgetMobile extends StatelessWidget {
  final Widget child;

  const CenteredWidgetMobile({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        alignment: Alignment.topCenter,
        child: child);
  }
}
