import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          // child: ListView(
          //   children: ExperienceItemList.list,
          // ),
          child: ListView.builder(
            itemCount: listSize,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ExperienceItemList.list[index],
                  _isLastElement(listSize, index)
                      ? Divider(
                          indent: 145.0,
                          endIndent: 145.0,
                          thickness: 3.0,
                          color: Colors.black,
                        )
                      : SizedBox()
                ],
              );
            },
          ),
        )
      ],
    );
  }

  bool _isLastElement(int listSize, int index) {
    return listSize - 1 != index;
  }
}
