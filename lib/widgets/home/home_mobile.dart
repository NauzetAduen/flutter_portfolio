import 'package:flutter/material.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

import 'social_list.dart';

class HomeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Center(
      child: SmoothScrollWeb(
        controller: controller,
        child: ListView(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Text(
              "Hello, welcome to my portfolio.\nI'm Nauzet, a mobile and Flutter developer.",
              style:
                  Theme.of(context).textTheme.headline3.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
            SocialList()
          ],
        ),
      ),
    );
  }
}
