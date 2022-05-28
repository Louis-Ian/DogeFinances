import 'package:doge_finances/components/signup_component.dart';
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
    return Scaffold(
      backgroundColor: dogeMidnight,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          height: 360,
                          child: SizedBox(
                            height: 128,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(defaultPadding),
                              child: Image.asset(
                                "lib/assets/icons/logo.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 480,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(defaultRadius))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            0, 2 * defaultPadding, 0, 0),
                        child: Column(
                          children: [
                            SignupComponent(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
