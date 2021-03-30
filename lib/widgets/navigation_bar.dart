import 'package:flutter/material.dart';

import 'home_willpop_scope.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        children: [
          HomeWillPopScope(
            context,
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/personal");
              },
              child: const Text(
                "personal",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 30),
          HomeWillPopScope(
            context,
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/work");
              },
              child: const Text(
                "work",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
