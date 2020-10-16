import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/styles.dart';
import '../../utils/experience_item_list.dart';
import '../navigation_bar/navigation_bar.dart';
import 'experience_item.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        NavigationBar(),
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            ExperienceItem item = ExperienceItemList.list[index];
            if (index == 0)
              return FirstTimeLine(item);
            else if (index == ExperienceItemList.list.length - 1)
              return LastTimeLine(item);
            else
              return MiddleTimeLine(item, index);
          },
          itemCount: ExperienceItemList.list.length,
        ),
      ],
    ));
  }
}

class FirstTimeLine extends StatelessWidget {
  final ExperienceItem item;
  const FirstTimeLine(this.item);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isFirst: true,
          endChild: CustomColumn(
            item: item,
          ),
        ),
        TimelineDivider(
          begin: 0.1,
          end: 0.9,
        ),
      ],
    );
  }
}

class LastTimeLine extends StatelessWidget {
  final ExperienceItem item;
  const LastTimeLine(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isLast: true,
          endChild: CustomColumn(
            item: item,
          ),
        )
      ],
    );
  }
}

class MiddleTimeLine extends StatelessWidget {
  final ExperienceItem item;
  final int index;
  const MiddleTimeLine(this.item, this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          lineXY: index.isOdd ? 0.9 : 0.1,
          alignment: TimelineAlign.manual,
          endChild: index.isEven
              ? CustomColumn(
                  item: item,
                )
              : null,
          startChild: index.isOdd
              ? CustomColumn(
                  item: item,
                )
              : null,
        ),
        TimelineDivider(
          begin: 0.1,
          end: 0.9,
        ),
      ],
    );
  }
}

class CustomColumn extends StatelessWidget {
  final ExperienceItem item;

  const CustomColumn({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item.date,
            style: Styles.experienceListitemBigger,
          ),
          Text(
            item.title,
            style: Styles.experienceListitem,
          ),
        ],
      ),
    );
  }
}
/*
int listSize = ExperienceItemList.list.length;
    return SingleChildScrollView(
      child: Column(
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

                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () => showGeneralDialog(
                        barrierDismissible: true,
                        barrierColor: Colors.blueGrey.withOpacity(0.4),
                        barrierLabel: "",
                        context: context,
                        transitionDuration: Duration(milliseconds: 666),
                        pageBuilder: (BuildContext context, _, __) {
                          return AlertDialog(
                            content: expItem.toDesktop(),
                            title: Text(
                              expItem.title,
                              style: Styles.dialogTitle,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                expItem.date,
                                style: Styles.experienceListitem,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Text(
                                expItem.title,
                                style: Styles.experienceListitemBigger,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
*/
