import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/nav_bar_element.dart';

class CustomTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'nau.',
            style: Styles.nauTextStyle,
          ),
          Row(
            children: <Widget>[
              NavBarElement('Info'),
              NavBarElement('Experience'),
              NavBarElement('Projects'),
              NavBarElement('Skills and interests'),
              NavBarElement('Contact'),
            ],
          )
        ],
      ),
    );
  }
}
