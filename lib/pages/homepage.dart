import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/CustomCircleAvatar.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:flutter_portfolio/widgets/home/IconButtonLinked.dart';
import 'package:flutter_portfolio/widgets/home/home_mobile.dart';
import 'package:flutter_portfolio/widgets/home/home_tablet_desktop.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: ScreenTypeLayout(
          mobile: HomeMobile(),
          tablet: HomeTabletDesktop(),
        ),
        //     body:
      ),
    );
  }
}
