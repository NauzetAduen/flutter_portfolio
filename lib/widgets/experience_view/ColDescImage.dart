import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class ColDescImage extends StatelessWidget {
  final String desc;
  final String image;

  const ColDescImage({Key key, this.desc, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Image(
            width: 150,
            image: AssetImage("assets/images/$image"),
          ),
        ),
        Text(
          desc,
          textAlign: TextAlign.justify,
          style: Styles.experienceDescMobile,
        ),
      ],
    );
  }
}
