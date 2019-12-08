import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:flutter_portfolio/widgets/experience_view/experience_mobile.dart';
import 'package:flutter_portfolio/widgets/experience_view/experience_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
