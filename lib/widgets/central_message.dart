import 'package:flutter/material.dart';

class CentralMessage extends StatelessWidget {
  const CentralMessage({
    Key key,
    @required this.welcomeMessage,
    @required this.pattern,
  }) : super(key: key);

  final List<String> welcomeMessage;
  final String pattern;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Theme.of(context).primaryColor, width: 4)),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: welcomeMessage.first,
                style: Theme.of(context).textTheme.headline6),
            TextSpan(
                text: pattern, style: Theme.of(context).textTheme.headline3),
            TextSpan(
                text: welcomeMessage.last,
                style: Theme.of(context).textTheme.headline6),
          ]),
        ),
      ),
    );
  }
}
