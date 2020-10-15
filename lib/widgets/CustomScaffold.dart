import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/navbar_item_list.dart';
import 'CustomCircleAvatar.dart';
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
            ? SizedBox(
                width: 150,
                child: Drawer(
                  child: Column(
                    // children: NavBarItemList.list,
                    children: <Widget>[
                      DrawerHeader(
                        child: CustomCircleAvatar(),
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: NavBarItemList.list,
                      )
                    ],
                  ),
                ),
              )
            : null,
        body: body,
      );
    });
  }
}
