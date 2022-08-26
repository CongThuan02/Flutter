import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.call),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_car_filled),
              ),
            ],
          ),
          title: Text('Flutter Tabs Example'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("call"),
            ),
            Center(
              child: Text("Transit"),
            ),
            Center(
              child: Text("Bike"),
            ),
            Center(
              child: Text("car_filled"),
            ),
          ],
        ),
      ),
    );
  }
}