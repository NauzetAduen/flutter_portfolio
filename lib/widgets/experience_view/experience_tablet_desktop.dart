import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../utils/experience_item_list.dart';
import '../navigation_bar/navigation_bar.dart';
import 'experience_item.dart';

final double indicatorSize = 25.0;
final LineStyle lineStyle = LineStyle(color: Colors.lightBlue, thickness: 4);
final EdgeInsets indicatorPadding = EdgeInsets.symmetric(vertical: 12);

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: SmoothScrollWeb(
            controller: controller,
            child: ListView.builder(
              controller: controller,
              physics: NeverScrollableScrollPhysics(),
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
            color: Colors.deepOrange,
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
  /*
  Things to change:
  afterLine --> beforeLine
  lineXY
  isLeft
  startChild --> endchild
  */
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      afterLineStyle: lineStyle,
      beforeLineStyle: lineStyle,
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0.8,
        padding: indicatorPadding,
        width: indicatorSize,
        height: indicatorSize,
        color: Colors.deepOrange,
      ),
      lineXY: 0.9,
      alignment: TimelineAlign.manual,
      isLast: true,
      startChild: CustomTile(
        expItem: item,
        isLeft: false,
      ),
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
            color: Colors.deepOrange,
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
      color: Colors.lightBlue,
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
    return GestureDetectorDesktop(expItem: expItem, isLeft: isLeft);
  }
}

class GestureDetectorDesktop extends StatelessWidget {
  const GestureDetectorDesktop({
    Key key,
    @required this.expItem,
    @required this.isLeft,
  }) : super(key: key);

  final ExperienceItem expItem;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, '/expitem', arguments: expItem),
        child: Align(
          alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
          child: Column(
            crossAxisAlignment:
                isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Hero(
                tag: "${expItem.date}",
                child: Text(
                  "${expItem.date}",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: isLeft ? TextAlign.left : TextAlign.right,
                ),
              ),
              Hero(
                tag: "${expItem.title}",
                child: Text(
                  expItem.title.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle2,
                  textAlign: isLeft ? TextAlign.left : TextAlign.right,
                ),
              ),
              FixedBox(),
              Text(
                expItem.smallDesc,
                style: Theme.of(context).textTheme.headline5,
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
