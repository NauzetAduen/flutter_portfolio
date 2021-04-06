import 'package:flutter/material.dart';
import '../widgets/links_row.dart';
import '../widgets/mobile_app_bar.dart';

class LandingPageMobile extends StatelessWidget {
  const LandingPageMobile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: MobileAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("nau", style: Theme.of(context).textTheme.headline1),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'flutter',
                        style: Theme.of(context).textTheme.headline2),
                    TextSpan(
                        text: 'dev',
                        style: Theme.of(context).textTheme.headline3),
                    TextSpan(
                        text: 'eloper',
                        style: Theme.of(context).textTheme.headline2),
                  ]),
                ),
              ]),
              LinksRow()
            ],
          ),
        ));
  }
}
