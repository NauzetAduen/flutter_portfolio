import 'package:flutter/material.dart';

class CenteredWidgetDesktop extends StatelessWidget {
  final Widget child;

  const CenteredWidgetDesktop({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 70, right: 70, top: 70),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
