import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';

class ExperienceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return ListView.builder(
      itemCount: listSize,
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ExperienceItemList.list[index],
            listSize - 1 != index
                ? Divider(
                    indent: 50.0,
                    endIndent: 50.0,
                    thickness: 1.0,
                    color: Colors.black,
                  )
                : SizedBox()
          ],
        );
      },
    );
  }
}
