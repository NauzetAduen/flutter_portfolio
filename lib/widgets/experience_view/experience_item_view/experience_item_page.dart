import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:flutter_portfolio/widgets/experience_view/experience_item.dart';

class ExperienceItemPage extends StatelessWidget {
  final ExperienceItem expItem;

  const ExperienceItemPage({this.expItem});
  @override
  Widget build(BuildContext context) {
    print(Navigator.canPop(context));
    return CenteredWidget(
      child: CustomScaffold(
        body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              children: [
                Text(expItem.title),
                ElevatedButton(
                  child: Hero(
                    child: Text(
                      expItem.date,
                      style: Styles.expItemTimeLineDesktDate,
                    ),
                    tag: "${expItem.date}-title",
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
