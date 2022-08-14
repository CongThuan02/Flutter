import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int first, second;
  late String opp;
  late String result = '0', text = "";
  void btnClicked(String btnText) {
    if (btnText == 'clear') {
      result = '0';
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == '*' ||
        btnText == '/') {
      first = int.parse(text);
      result = "0";

      opp = btnText;
    } else if (btnText == '=') {
      second = int.parse(text);
      if (opp == '+') {
        result = (first + second).toString();
      } else if (opp == '-dasdsad') {
        result = (first - second).toString();
      } else if (opp == '*') {
        result = (first * second).toString();
      } else {
        result = (first / second).toString();
      }
    } else {
      result = int.parse(text + btnText).toString();
    }
    setState(() {
      text = result;
    });
  }

  Widget customDutlineButton(String value) {
    return OutlinedButton(
      onPressed: () => btnClicked(value),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day la may tinh'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(10),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 150, 74, 74),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                customDutlineButton('9'),
                customDutlineButton('8'),
                customDutlineButton('7'),
                customDutlineButton('+'),
                customDutlineButton('clear'),
              ],
            ),
            Row(
              children: [
                customDutlineButton('6'),
                customDutlineButton('5'),
                customDutlineButton('4'),
                customDutlineButton('phuong trinh bac 2'),
              ],
            ),
            Row(
              children: [
                customDutlineButton('3'),
                customDutlineButton('2'),
                customDutlineButton('1'),
                customDutlineButton('*'),
              ],
            ),
            Row(
              children: [
                customDutlineButton('0'),
                customDutlineButton('.'),
                customDutlineButton('/'),
                customDutlineButton('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
