import 'package:flutter/material.dart';

import 'package:doge_finances/components/loginComponent.dart';

import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dogeMidnight,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Center(
                  child: SizedBox(
                    height: 128,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(defaultPadding),
                      child: Image.asset(
                        "lib/assets/icons/logo.png",
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 410,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(defaultRadius))),
                  child: Padding(
                    padding:
                        const EdgeInsets.fromLTRB(0, 2 * defaultPadding, 0, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        LoginComponent(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
