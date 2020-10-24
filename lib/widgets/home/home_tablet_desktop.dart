import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../CustomCircleAvatar.dart';
import '../navigation_bar/navigation_bar.dart';
import 'social_list.dart';

class HomeTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                CustomCircleAvatar(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 70),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Hi, I'm Nauzet, a",
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        child: RotateAnimatedTextKit(
                          duration: const Duration(seconds: 2),
                          pause: const Duration(milliseconds: 500),
                          repeatForever: true,
                          text: [
                            "mobile developer",
                            "Flutter developer",
                            "software engineer",
                            "sex symbol",
                            "drug addict",
                            "super genius"
                          ],
                          textStyle: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                SocialList()
              ],
            ),
          ),
        )
      ],
    );
  }
}
