import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/widgets/navBarElement.dart';

class CustomTopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'nau.',
            style: Styles.nauTextStyle,
          ),
          Wrap(
            children: <Widget>[
              NavBarElement('Home'),
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
