import 'package:flutter/material.dart';

import '../../CustomScaffold.dart';
import '../../centered_widget/centered_widget.dart';
import '../experience_item.dart';

class ExperienceItemPage extends StatelessWidget {
  final ExperienceItem expItem;

  const ExperienceItemPage({this.expItem});
  @override
  Widget build(BuildContext context) {
    print(Navigator.canPop(context));
    return CenteredWidget(
      child: CustomScaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Hero(
                  tag: "${expItem.date}",
                  child: Text(
                    "${expItem.date} ",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Hero(
                  tag: "${expItem.title}",
                  child: Text(
                    expItem.title.toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
