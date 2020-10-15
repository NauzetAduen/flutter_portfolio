import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/CustomScaffold.dart';
import '../widgets/centered_widget/centered_widget.dart';
import '../widgets/home/home_mobile.dart';
import '../widgets/home/home_tablet_desktop.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: ScreenTypeLayout(
          mobile: HomeMobile(),
          tablet: HomeTabletDesktop(),
        ),
      ),
    );
  }
}
