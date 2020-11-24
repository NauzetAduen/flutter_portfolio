import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../CustomScaffold.dart';
import '../../centered_widget/centered_widget.dart';
import '../experience_item.dart';

class ExperienceItemPage extends StatelessWidget {
  final ExperienceItem expItem;

  const ExperienceItemPage({this.expItem});
  @override
  Widget build(BuildContext context) {
    return CenteredWidget(
      child: CustomScaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButtom(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 28,
                    ),
                    onPresed: () =>
                        Navigator.popUntil(context, (route) => route.isFirst),
                  ),
                  Hero(
                    tag: "${expItem.date}",
                    child: Text(
                      "${expItem.date} ",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Hero(
                tag: "${expItem.title}",
                child: Text(
                  expItem.title.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              // fit: FlexFit.loose,
              child: SingleChildScrollView(
                  child: ResponsiveBuilder(builder: (_, info) {
                bool isMobile =
                    info.deviceScreenType == DeviceScreenType.mobile;
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: isMobile ? 1 : 3,
                      child: Text(expItem.desc,
                          style: isMobile
                              ? Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(fontSize: 18)
                              : Theme.of(context).textTheme.headline5),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image(
                          image: AssetImage(
                              "assets/images/previews/${expItem.image}"),
                        ),
                      ),
                    ),
                  ],
                );
              })),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 5,
                runSpacing: 5,
                direction: Axis.horizontal,
                children: expItem.chips,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomButtom(
                  icon: Icon(
                    Icons.link,
                    size: 20,
                  ),
                  onPresed: () =>
                      js.context.callMethod("open", ["${expItem.url}"])),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final Widget icon;
  final Function onPresed;

  const CustomButtom({this.icon, this.onPresed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: onPresed,
      color: Colors.lightBlue,
      iconSize: 28,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
    );
  }
}
