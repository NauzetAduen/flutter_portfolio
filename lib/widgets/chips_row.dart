import 'package:flutter/material.dart';
import 'package:flutter_portfolio/model/work.dart';

class ChipsRow extends StatelessWidget {
  const ChipsRow({
    Key key,
    @required this.work,
  }) : super(key: key);

  final Work work;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Wrap(
              alignment: WrapAlignment.center,
              // mainAxisAlignment:
              //     MainAxisAlignment.center,
              children: [
                for (var chip in work.chips)
                  Chip(
                    shape: StadiumBorder(
                        side: BorderSide(
                            color: Theme.of(context).scaffoldBackgroundColor)),

                    // padding:
                    //     EdgeInsets.symmetric(horizontal: ),
                    label: Text(
                      chip,
                      style: TextStyle(
                          fontSize: 12, color: Theme.of(context).primaryColor),
                    ),
                    backgroundColor: Theme.of(context).focusColor,
                  ),
              ],
            ),
          ),
        ],
      );
}
