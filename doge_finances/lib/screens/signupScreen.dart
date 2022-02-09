import 'package:doge_finances/components/SignupComponent.dart';
import 'package:flutter/material.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

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
                        SignupComponent(),
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
