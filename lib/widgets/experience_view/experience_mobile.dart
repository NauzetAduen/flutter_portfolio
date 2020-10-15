import 'package:flutter/material.dart';

import '../../style/styles.dart';
import '../../utils/experience_item_list.dart';
import 'experience_item.dart';

class ExperienceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int listSize = ExperienceItemList.list.length;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ListView.builder(
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
                        content: expItem.toMobile(),
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
                    child: Text(
                      expItem.title,
                      style: Styles.experienceListitemMobile,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
