
import 'package:app1/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SportifyApp());
}

class SportifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
