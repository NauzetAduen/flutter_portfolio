import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/about_view/about_mobile.dart';
import 'package:flutter_portfolio/widgets/about_view/about_tablet_desktop.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: ScreenTypeLayout(
          mobile: AboutMobile(),
          tablet: AboutTabletDesktop(),
        ),
      ),
    );
  }
}
