import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';

import 'experience_item.dart';

class ExperienceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return ListView.builder(
      itemCount: listSize,
      itemBuilder: (context, index) {
        ExperienceItem expItem = ExperienceItemList.list[index];

        return IconButton(
          icon: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.keyboard_arrow_right, size: 45),
              Text(expItem.title),
            ],
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      title: Text(expItem.title), content: expItem.toMobile());
                });
          },
        );
      },
    );
  }
}
