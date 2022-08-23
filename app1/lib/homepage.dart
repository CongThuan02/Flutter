import 'package:app1/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'destop.dart';
import 'mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: MyDesktopBody(),
        mobileBody: MyMobileBody(),
      ),
    );
  }
}
