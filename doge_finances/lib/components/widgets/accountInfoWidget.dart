import 'dart:math';

import 'package:doge_finances/constants.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  // const AccountInfo({Key key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  Color randomBrightColor() {
    var color69 = new Random().nextInt(3);  // Choose which field (R, G, or B) will have the 69 value
    var color222 = new Random().nextBool(); // Choose which field the 2 fields that are left (the first or the second) will have the 222 value
    var colorVal = 69 + new Random().nextInt(153);  // Choose tha random value for the last field

    var finalColor;

    if (color69 == 0) {
      if (color222) {
        finalColor = Color.fromRGBO(69, 222, colorVal, 1);
      } else {
        finalColor = Color.fromRGBO(69, colorVal, 222, 1);
      }
    } else if (color69 == 1) {
      if (color222) {
        finalColor = Color.fromRGBO(222, 69, colorVal, 1);
      } else {
        finalColor = Color.fromRGBO(colorVal, 69, 222, 1);
      }
    } else {
      if (color222) {
        finalColor = Color.fromRGBO(222, colorVal, 69, 1);
      } else {
        finalColor = Color.fromRGBO(colorVal, 222, 69, 1);
      }
    }

    return finalColor;
}


@override
Widget build(BuildContext context) {
  return SizedBox(
    child: Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: randomBrightColor(),
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
      ),
    ),
  );
}}
