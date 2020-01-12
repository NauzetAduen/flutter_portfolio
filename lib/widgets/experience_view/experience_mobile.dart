import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';

import 'experience_item.dart';

class ExperienceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.builder(
        itemCount: listSize,
        itemBuilder: (context, index) {
          ExperienceItem expItem = ExperienceItemList.list[index];

          return IconButton(
            padding: const EdgeInsets.only(bottom: 10),
            alignment: Alignment.centerLeft,
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.keyboard_arrow_right, size: 45),
                Flexible(
                  flex: 1,
                  child: Text(expItem.title,
                      style: Styles.experienceListitemMobile),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        title: Text(expItem.title),
                        content: expItem.toMobile());
                  });
            },
          );
        },
      ),
    );
  }
}
