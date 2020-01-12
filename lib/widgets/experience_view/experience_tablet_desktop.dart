import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

import 'experience_item.dart';

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        NavigationBar(),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: listSize,
            itemBuilder: (context, index) {
              ExperienceItem expItem = ExperienceItemList.list[index];

              return IconButton(
                alignment: Alignment.centerLeft,
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 35,
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        expItem.title,
                        style: Styles.experienceListitem,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            title: Text(expItem.title),
                            content: expItem.toDesktop());
                      });
                },
              );
            },
          ),
        )
      ],
    );
  }
}
