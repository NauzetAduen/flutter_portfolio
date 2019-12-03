import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar/navbar_logo.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  const CustomScaffold({Key key, this.body}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      bool isMobile = sizingInfo.deviceScreenType == DeviceScreenType.Mobile;
      return Scaffold(
        appBar: isMobile
            ? AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: NavBarLogo(),
              )
            : null,
        backgroundColor: Colors.white,
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Text("PUTO SUSO"),
                    ),
                  ],
                ),
              )
            : null,
        body: body,
      );
    });
  }
}
