import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/about_item_list.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AboutItemList.list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: AboutItemList.list[index],
        );
      },
    );
  }
}
