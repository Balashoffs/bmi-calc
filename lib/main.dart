import 'calculate.dart';
import 'start_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(BimCalculator());

class BimCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bmi Calculator",
      theme: ThemeData(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
        accentColor: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => StartWidget(),
        '/calculate':(context) => Calculate(),
      },
    );
  }
}




