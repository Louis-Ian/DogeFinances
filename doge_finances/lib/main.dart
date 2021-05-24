import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doge_finances/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doge Finances',
      home: Homescreen(),
    );
  }
}