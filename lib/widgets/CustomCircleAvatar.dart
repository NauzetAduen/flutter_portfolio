import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset("assets/images/profilepicture.png"),
      radius: 70,
      backgroundColor: Colors.blueGrey,
    );
  }
}
