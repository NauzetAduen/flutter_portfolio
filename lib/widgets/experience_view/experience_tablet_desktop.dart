import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../style/styles.dart';
import '../../utils/experience_item_list.dart';
import '../navigation_bar/navigation_bar.dart';
import 'experience_item.dart';

final double indicatorSize = 35.0;
final LineStyle lineStyle = LineStyle(color: Colors.green, thickness: 4);

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
          afterLineStyle: lineStyle,
          indicatorStyle: IndicatorStyle(
              width: indicatorSize,
              height: indicatorSize,
              indicator: CircleIndicator(
                completed: item.completed,
              )),
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isFirst: true,
          endChild: CustomTitle(
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
              width: indicatorSize,
              height: indicatorSize,
              indicator: CircleIndicator(
                completed: item.completed,
              )),
          lineXY: 0.1,
          alignment: TimelineAlign.manual,
          isLast: true,
          endChild: CustomTitle(
            expItem: item,
            isLeft: true,
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
          beforeLineStyle: lineStyle,
          afterLineStyle: lineStyle,
          lineXY: index.isOdd ? 0.9 : 0.1,
          alignment: TimelineAlign.manual,
          indicatorStyle: IndicatorStyle(
              width: indicatorSize,
              height: indicatorSize,
              indicator: CircleIndicator(
                completed: item.completed,
              )),
          endChild: index.isEven
              ? CustomTitle(
                  expItem: item,
                  isLeft: true,
                )
              : null,
          startChild: index.isOdd
              ? CustomTitle(
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
      color: Colors.green,
      begin: 0.1,
      end: 0.9,
      thickness: 4,
    );
  }
}

class CustomTitle extends StatelessWidget {
  final ExperienceItem expItem;
  final bool isLeft;

  const CustomTitle({Key key, this.expItem, this.isLeft}) : super(key: key);
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
                  "${expItem.title} _ ${expItem.date}",
                  style: Styles.dialogTitle,
                  textAlign: TextAlign.center,
                ),
              );
            }),
        child: Container(
          height: 200,
          child: Align(
            alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
            child: Text(
              expItem.title,
              style: Styles.experienceListitem,
            ),
          ),
        ),
      ),
    );
  }
}

class CircleIndicator extends StatelessWidget {
  final bool completed;

  const CircleIndicator({Key key, this.completed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.green, border: Border.all()),
      child: Center(
          child: FaIcon(
        _getIconData(completed),
        size: 18,
      )),
    );
  }
}

IconData _getIconData(bool completed) {
  return completed ? FontAwesomeIcons.check : FontAwesomeIcons.cog;
}
