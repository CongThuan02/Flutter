import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.file_upload),
            onPressed: () => {print("Click on upload button")},
          ),
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {print("Click on settings button")}),
          PopupMenuButton(
            icon: Icon(Icons.share),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Facebook"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Instagram"),
              ),
            ],
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {
            showAlert(context);
          },
        ),
      ),
      body: Center(
        child: Text("Hello World."),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Hi"),
            ));
  }
}
