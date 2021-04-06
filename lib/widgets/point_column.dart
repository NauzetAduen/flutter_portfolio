import 'package:flutter/material.dart';

import '../model/personal.dart';

class PointColumn extends StatelessWidget {
  const PointColumn({
    Key key,
    @required this.personalPoint,
    @required this.isEven,
  }) : super(key: key);

  final PersonalPoint personalPoint;
  final bool isEven;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(personalPoint.title,
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2),
          Container(
            height: 2,
            width: 200,
            color: Theme.of(context).focusColor,
          ),
          for (var points in personalPoint.points)
            Text(points,
                textAlign: isEven ? TextAlign.left : TextAlign.right,
                style: Theme.of(context).textTheme.bodyText1)
          // style: width < 600
          //     ? Theme.of(context)
          //         .textTheme
          //         .bodyText1
          //         .copyWith(fontSize: 14)
          //     : Theme.of(context).textTheme.bodyText1)
        ],
      );
}
