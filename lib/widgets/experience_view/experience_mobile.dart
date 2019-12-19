import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';

class ExperienceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ExperienceItemList.list,
    );
  }
}
