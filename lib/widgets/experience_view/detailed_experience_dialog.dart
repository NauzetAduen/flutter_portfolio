import 'package:flutter/material.dart';

class DetailedExperience extends StatelessWidget {
  final int experienceItemIndex;

  DetailedExperience(this.experienceItemIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(experienceItemIndex.toString()),
      ),
    );
  }
}
