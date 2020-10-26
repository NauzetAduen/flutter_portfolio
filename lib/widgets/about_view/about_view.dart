import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../utils/about_item_list.dart';
import '../navigation_bar/navigation_bar.dart';

final double indicatorSize = 25.0;
final LineStyle lineStyle = LineStyle(color: Colors.lightBlue, thickness: 4);
final EdgeInsets indicatorPadding = EdgeInsets.symmetric(vertical: 12);

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NavigationBar(),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: AboutItemList.list.length,
            itemBuilder: (context, index) {
              var item = AboutItemList.list[index];
              if (index == 0)
                return AboutTimeLine(item, isFirst: true, isLast: false);
              if (index == AboutItemList.list.length - 1)
                return AboutTimeLine(item, isFirst: false, isLast: true);
              return AboutTimeLine(item, isFirst: false, isLast: false);
            },
          ),
        ),
      ],
    );
  }
}

class AboutTimeLine extends StatelessWidget {
  final AboutItem aboutItem;
  final bool isFirst;
  final bool isLast;

  const AboutTimeLine(this.aboutItem, {this.isFirst, this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        afterLineStyle: lineStyle,
        beforeLineStyle: lineStyle,
        lineXY: 0.3,
        alignment: TimelineAlign.manual,
        indicatorStyle: IndicatorStyle(
          padding: indicatorPadding,
          indicatorXY: 0.5,
          width: indicatorSize,
          height: indicatorSize,
          color: Colors.deepOrange,
        ),
        startChild: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: ResponsiveBuilder(
            builder: (context, info) => Text(
              aboutItem.title,
              textAlign: TextAlign.right,
              style: info.deviceScreenType == DeviceScreenType.mobile
                  ? Theme.of(context).textTheme.headline6.copyWith(fontSize: 18)
                  : Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        endChild: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: ResponsiveBuilder(
            builder: (context, info) => Text(aboutItem.info,
                style: info.deviceScreenType == DeviceScreenType.mobile
                    ? Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 14)
                    : Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 22)),
          ),
        ),
      ),
    );
  }
}

class AboutItem {
  final String title;
  final String info;

  const AboutItem({this.title, this.info});
}
