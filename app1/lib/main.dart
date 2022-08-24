
import 'package:flutter/material.dart';
import 'package:movie_db_app/src/ui/home_screen.dart';

void main() {
  runApp(SportifyApp());
}

class SportifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
