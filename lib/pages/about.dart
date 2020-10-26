import 'package:flutter/material.dart';

import '../widgets/CustomScaffold.dart';
import '../widgets/about_view/about_view.dart';
import '../widgets/centered_widget/centered_widget.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: AboutView(),
      ),
    );
  }
}
