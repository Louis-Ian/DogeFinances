import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doge_finances/theme/colors.dart';

class Homescreen extends StatefulWidget {

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dogeMidnight,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 12, 24),
        child: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(
            CupertinoIcons.arrow_up_arrow_down,
            color: dogeWhite.withOpacity(0.9),
          ),
          shape: RoundedRectangleBorder(borderRadius:
          BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: dogeIce.withOpacity(0.8),
        ),
      ),
    );
  }
}