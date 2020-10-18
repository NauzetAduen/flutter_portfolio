import 'package:flutter/material.dart';

import '../../utils/about_item_list.dart';
import '../navigation_bar/navigation_bar.dart';

class AboutTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: ListView.builder(
            itemCount: AboutItemList.list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AboutItemList.list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
