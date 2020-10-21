import 'package:flutter/material.dart';

import '../widgets/CustomScaffold.dart';
import '../widgets/centered_widget/centered_widget.dart';
import '../widgets/experience_view/experience_tablet_desktop.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: ExperienceTabletDesktop(),
      ),
    );
  }
}
