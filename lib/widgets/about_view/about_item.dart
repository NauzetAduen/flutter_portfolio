import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../style/styles.dart';

class AboutItem extends StatelessWidget {
  final String title;
  final List<String> info;

  const AboutItem({Key key, this.title, this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
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
            itemCount: info.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ResponsiveBuilder(builder: (context, size) {
                return size.deviceScreenType != DeviceScreenType.mobile
                    ? Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.check_circle_outline,
                              size: 30,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            info[index],
                            style: Styles.aboutInfo,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      )
                    : Text(
                        info[index],
                        style: Styles.aboutInfoMobile,
                        textAlign: TextAlign.justify,
                      );
              });
            },
          )
        ],
      ),
    );
  }
}
