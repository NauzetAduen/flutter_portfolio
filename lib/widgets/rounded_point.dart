import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/personal.dart';

class RoundedPoint extends StatelessWidget {
  const RoundedPoint({
    Key key,
    @required this.personalPoint,
    @required this.width,
  }) : super(key: key);

  final PersonalPoint personalPoint;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Theme.of(context).focusColor, width: 3)),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(personalPoint.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2),
            Container(
              height: 2,
              width: 200,
              color: Theme.of(context).accentColor,
            ),
            for (var points in personalPoint.points)
              Text(points,
                  textAlign: TextAlign.center,
                  style: width < 600
                      ? Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 14)
                      : Theme.of(context).textTheme.bodyText1)
          ],
        )));
  }
}
