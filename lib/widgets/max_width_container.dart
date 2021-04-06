import 'package:flutter/material.dart';

import '../utils/constrains.dart';

class MaxWidthContainer extends StatelessWidget {
  final Widget child;

  const MaxWidthContainer({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: child,
    ));
  }
}
