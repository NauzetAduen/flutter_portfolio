import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../style/styles.dart';
import '../../utils/experience_item_list.dart';
import '../navigation_bar/navigation_bar.dart';
import 'experience_item.dart';

final double indicatorSize = 25.0;
final LineStyle lineStyle = LineStyle(color: Styles.blue, thickness: 4);
final EdgeInsets indicatorPadding = EdgeInsets.symmetric(vertical: 12);

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: ListView.builder(
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
        ),
      ],
    );
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
          afterLineStyle: lineStyle,
          indicatorStyle: IndicatorStyle(
            indicatorXY: 0.2,
            padding: indicatorPadding,
            width: indicatorSize,
            height: indicatorSize,
            color: Styles.orange,
          ),
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isFirst: true,
          endChild: CustomTile(
            expItem: item,
            isLeft: true,
          ),
        ),
        CustomDivider()
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
          beforeLineStyle: lineStyle,
          indicatorStyle: IndicatorStyle(
            indicatorXY: 0.8,
            padding: indicatorPadding,
            width: indicatorSize,
            height: indicatorSize,
            color: Styles.orange,
          ),
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isLast: true,
          endChild: CustomTile(
            expItem: item,
            isLeft: true,
          ),
        ),
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
          beforeLineStyle: lineStyle,
          afterLineStyle: lineStyle,
          lineXY: index.isOdd ? 0.9 : 0.1,
          alignment: TimelineAlign.manual,
          indicatorStyle: IndicatorStyle(
            padding: indicatorPadding,
            width: indicatorSize,
            height: indicatorSize,
            color: Styles.orange,
            // indicator: CircleIndicator(
            //   completed: item.completed,
            // ),
          ),
          endChild: index.isEven
              ? CustomTile(
                  expItem: item,
                  isLeft: true,
                )
              : null,
          startChild: index.isOdd
              ? CustomTile(
                  expItem: item,
                  isLeft: false,
                )
              : null,
        ),
        CustomDivider(),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TimelineDivider(
      color: Styles.blue,
      begin: 0.1,
      end: 0.9,
      thickness: 4,
    );
  }
}

class CustomTile extends StatelessWidget {
  final ExperienceItem expItem;
  final bool isLeft;

  const CustomTile({Key key, this.expItem, this.isLeft}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
                  "${expItem.title}, ${expItem.date}",
                  style: Styles.dialogTitle,
                  textAlign: TextAlign.center,
                ),
              );
            }),
        child: Align(
          alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
          child: Column(
            crossAxisAlignment:
                isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text(
                "${expItem.date} ",
                style: Styles.expItemTimeLineDesktDate,
                textAlign: isLeft ? TextAlign.left : TextAlign.right,
              ),
              Text(
                expItem.title.toUpperCase(),
                style: Styles.expItemTimeLineDeskTitle,
                textAlign: isLeft ? TextAlign.left : TextAlign.right,
              ),
              FixedBox(),
              Text(
                expItem.smallDesc,
                style: Styles.expItemTimeLineDeskSmallDesk,
                textAlign: isLeft ? TextAlign.left : TextAlign.right,
              ),
              FixedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class FixedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}
