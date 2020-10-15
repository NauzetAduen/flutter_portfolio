import 'package:flutter/material.dart';

import '../../style/styles.dart';

class RowDescImage extends StatelessWidget {
  const RowDescImage({
    Key key,
    @required this.desc,
    @required this.image,
  }) : super(key: key);

  final String desc;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            desc,
            // textAlign: TextAlign.justify,
            style: Styles.experienceDesc,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 300,
            height: 300,
            child: Image(
              image: AssetImage("assets/images/previews/$image"),
            ),
          ),
        ),
      ],
    );
  }
}
