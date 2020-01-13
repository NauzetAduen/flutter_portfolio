import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/style/styles.dart';
import 'package:flutter_portfolio/utils/experience_item_list.dart';
import 'package:flutter_portfolio/widgets/navigation_bar/navigation_bar.dart';

import 'experience_item.dart';

class ExperienceTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          NavigationBar(),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listSize,
              itemBuilder: (context, index) {
                ExperienceItem expItem = ExperienceItemList.list[index];

                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: IconButton(
                      color: Colors.blueGrey,
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      alignment: Alignment.centerLeft,
                      icon: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 30,
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              expItem.title,
                              style: Styles.experienceListitem,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        showGeneralDialog(
                            barrierDismissible: true,
                            barrierColor: Colors.blueGrey.withOpacity(0.4),
                            barrierLabel: "",
                            context: context,
                            transitionDuration: Duration(milliseconds: 666),
                            pageBuilder: (BuildContext context, _, __) {
                              return AlertDialog(
                                content: expItem.toDesktop(),
                                title: Text(
                                  expItem.title,
                                  style: Styles.dialogTitle,
                                  textAlign: TextAlign.center,
                                ),
                              );
                            });
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
