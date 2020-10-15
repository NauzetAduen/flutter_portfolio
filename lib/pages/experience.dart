import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/CustomScaffold.dart';
import '../widgets/centered_widget/centered_widget.dart';
import '../widgets/experience_view/experience_mobile.dart';
import '../widgets/experience_view/experience_tablet_desktop.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: ScreenTypeLayout(
          mobile: ExperienceMobile(),
          tablet: ExperienceTabletDesktop(),
        ),
      ),
    );
  }
}
