import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/mobile_app_bar.dart';

class WorkPageMobile extends StatelessWidget {
  const WorkPageMobile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: MobileAppBar(),
        ),
        body: Center(
          child: Text("WORKKROWK"),
        ));
  }
}
