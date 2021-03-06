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
      bool isMobile = sizingInfo.deviceScreenType == DeviceScreenType.mobile;
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
                    children: <Widget>[
                      DrawerHeader(
                        child: CustomCircleAvatar(),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        // children: NavBarItemList.list,
                        itemBuilder: (context, index) {
                          return NavBarItemList.list[index];
                        },
                        itemCount: NavBarItemList.list.length,
                        separatorBuilder: (context, separatorIndex) {
                          if (separatorIndex !=
                              NavBarItemList.list.length - 1) {
                            return Divider(
                              color: Colors.lightBlue,
                              thickness: 1,
                            );
                          } else {
                            return Container();
                          }
                        },
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
