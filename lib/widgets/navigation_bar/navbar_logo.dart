import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset("assets/images/logos/logo.png"),
        ),
        Text(
          'nau.',
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
