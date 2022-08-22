import 'package:app1/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(SportifyApp());
}

class SportifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit() {
        builder: ()=> MaterialApp(){
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.black),
          home: HomePage(),
        }
      };
   
  }
}
