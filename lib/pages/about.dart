import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/CustomScaffold.dart';
import '../widgets/about_view/about_mobile.dart';
import '../widgets/about_view/about_tablet_desktop.dart';
import '../widgets/centered_widget/centered_widget.dart';

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
