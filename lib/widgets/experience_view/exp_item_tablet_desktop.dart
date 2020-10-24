import 'dart:js' as js;

import 'package:flutter/material.dart';

import 'RowDescImage.dart';
import 'experience_item.dart';

//TODO
//REMOVE
class ExpItemDialog extends StatelessWidget {
  final ExperienceItem item;

  const ExpItemDialog({this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RowDescImage(desc: item.desc, image: item.image),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: item.chips,
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.link,
                    color: Colors.lightBlue,
                    size: 35,
                  ),
                  onPressed: () =>
                      js.context.callMethod("open", ["${item.url}"]))
            ],
          )
        ],
      ),
    );
  }
}
