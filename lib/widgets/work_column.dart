import 'package:flutter/material.dart';

import '../model/work.dart';
import 'chips_row.dart';
import 'url_link.dart';

class WorkColumn extends StatelessWidget {
  const WorkColumn({
    Key key,
    @required this.currentWork,
  }) : super(key: key);

  final Work currentWork;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(currentWork.title, style: Theme.of(context).textTheme.subtitle1),
      Text(currentWork.date, style: Theme.of(context).textTheme.subtitle2),
      Text(currentWork.description,
          style: Theme.of(context).textTheme.bodyText1),
      Align(child: UrlLink(url: currentWork.url)),
      Image.asset(
        'assets/images/${currentWork.imageURL}',
      ),
      ChipsRow(work: currentWork),
    ]);
  }
}
