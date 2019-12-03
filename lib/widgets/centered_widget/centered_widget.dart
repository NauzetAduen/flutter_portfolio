import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_desktop.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredWidget extends StatelessWidget {
  final Widget child;

  const CenteredWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CenteredWidgetMobile(
        child: child,
      ),
      tablet: CenteredWidgetDesktop(
        child: child,
      ),
    );
  }
}
