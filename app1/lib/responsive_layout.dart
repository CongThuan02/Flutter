import 'package:app1/dimesions.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  late final Widget mobileBody;
  late final Widget desktopBody;
  ResponsiveLayout({required this.mobileBody, required this.desktopBody});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
