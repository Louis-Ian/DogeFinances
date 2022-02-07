import 'package:doge_finances/screens/homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:doge_finances/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

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
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: defaultPadding, top: defaultPadding),
                          child: Text(
                            "Log In",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              fontSize: 32,
                              color: dogeWhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: dogeWhite,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadius)),
                              ),
                            ),
                            child: SizedBox(
                              height: 40,
                              width: 220,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 4.0),
                                        child: Icon(
                                          FontAwesomeIcons.solidEnvelope,
                                          color: dogeMidnight,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2 * defaultPadding),
                                        child: Text(
                                          "Email",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            color: dogeMidnight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: dogeWhite,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadius)),
                              ),
                            ),
                            child: SizedBox(
                              height: 40,
                              width: 220,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 3.0),
                                        child: Icon(
                                          FontAwesomeIcons.google,
                                          color: dogeMidnight,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2 * defaultPadding),
                                        child: Text(
                                          "Google",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            color: dogeMidnight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: dogeWhite,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadius)),
                              ),
                            ),
                            child: SizedBox(
                              height: 40,
                              width: 220,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 3.0),
                                        child: Icon(
                                          FontAwesomeIcons.github,
                                          color: dogeMidnight,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2 * defaultPadding),
                                        child: Text(
                                          "Github",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            color: dogeMidnight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: defaultPadding),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return Homescreen();
                                }),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: dogeWhite,
                              shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultRadius)),
                              ),
                            ),
                            child: SizedBox(
                              height: 40,
                              width: 220,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 3.0),
                                        child: Icon(
                                          FontAwesomeIcons.solidUserCircle,
                                          color: dogeMidnight,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 2 * defaultPadding),
                                        child: Text(
                                          "Guest",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 24,
                                            color: dogeMidnight,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
