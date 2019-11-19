import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class NavBarElement extends StatelessWidget {
  final String text;

  const NavBarElement(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: Styles.navBarElement,
      ),
    );
  }
}
