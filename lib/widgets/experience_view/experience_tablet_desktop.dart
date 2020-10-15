import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/styles.dart';
import '../../utils/experience_item_list.dart';
import '../navigation_bar/navigation_bar.dart';
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
                  child: GestureDetector(
                    onTap: () => showGeneralDialog(
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
                        }),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                expItem.date,
                                style: Styles.experienceListitem,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Text(
                                expItem.title,
                                style: Styles.experienceListitemBigger,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
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
