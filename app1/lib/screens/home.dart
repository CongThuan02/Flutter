import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80),
              alignment: Alignment.topLeft,
              color: Colors.black.withOpacity(0.6),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("check"),
                  ],
                ),
              ),
            ),
            Container(width: 80, color: Colors.black)
          ],
        ),
      ),
    );
  }
}
