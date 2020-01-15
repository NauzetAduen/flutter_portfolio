import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/CustomScaffold.dart';
import 'package:flutter_portfolio/widgets/centered_widget/centered_widget.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
          body: Column(
        children: <Widget>[
          NavigationBar(),
          Expanded(
              child: Center(
            child: Text(
              "Uh Oh!\nError 404",
              style: Styles.errorMessage,
              textAlign: TextAlign.center,
            ),
          ))
        ],
      )),
    );
  }
}
