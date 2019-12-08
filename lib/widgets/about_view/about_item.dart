import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';

class AboutItem extends StatelessWidget {
  final String title;
  final List<String> info;

  const AboutItem({Key key, this.title, this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: Styles.aboutTitle,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 30,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      info[index],
                      style: Styles.aboutInfo,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              );
            },
            itemCount: info.length,
          )
          // Text(
          //   // info,
          //   style: Styles.aboutInfo,
          //   textAlign: TextAlign.justify,
          // ),
        ],
      ),
    );
  }
}
