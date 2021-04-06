import 'package:flutter/material.dart';

import '../utils/constrains.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout({
    @required this.mobile,
    @required this.desktop,
  });
  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constrains) =>
            (constrains.maxWidth <= kMobileWidth) ? mobile : desktop,
      );
}
