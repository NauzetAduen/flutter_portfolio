import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class NavBarItem extends StatelessWidget {
  final String text;
  const NavBarItem({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.pushReplacementNamed(context, "/$text"),
        child: Text(
          '$text',
          style: Styles.navBarElementBold,
        ),
      ),
    );
  }
}
