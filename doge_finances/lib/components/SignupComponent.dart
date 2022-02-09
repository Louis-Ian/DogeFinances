import 'package:doge_finances/constants.dart';
import 'package:doge_finances/services/authenticationService.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupComponent extends StatefulWidget {
  const SignupComponent({Key? key}) : super(key: key);

  @override
  _SignupComponentState createState() => _SignupComponentState();
}

class _SignupComponentState extends State<SignupComponent> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailTextController = TextEditingController();
    final TextEditingController passwordTextController =
    TextEditingController();

    final authService = Provider.of<AuthenticationService>(context);

    return Column(
      children: [
        Text(
          "Sign Up",
          style: GoogleFonts.inter(
            fontSize: 30,
            color: dogeWhite,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 3 * defaultPadding,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: TextField(
            controller: emailTextController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: dogeWhite, width: 2.0),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: dogeLilac, width: 2.0),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              constraints: BoxConstraints(
                maxHeight: 48,
                maxWidth: 280,
              ),
              contentPadding: EdgeInsets.only(left: 30),
              filled: true,
              fillColor: dogeWhite,
              focusColor: dogeWhite,
              hintText: 'email',
              prefixIconColor: dogeMidnight,
              prefixIcon: Icon(
                FontAwesomeIcons.solidEnvelope,
                color: dogeMidnight.withOpacity(0.4),
                size: 22,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: TextField(
            controller: passwordTextController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: dogeWhite, width: 2.0),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: dogeLilac, width: 2.0),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              constraints: BoxConstraints(
                maxHeight: 48,
                maxWidth: 280,
              ),
              contentPadding: EdgeInsets.only(left: 30),
              filled: true,
              fillColor: dogeWhite,
              focusColor: dogeWhite,
              hintText: 'password',
              prefixIconColor: dogeMidnight,
              prefixIcon: Icon(
                FontAwesomeIcons.lock,
                color: dogeMidnight.withOpacity(0.4),
                size: 22,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 280,
          height: 36,
          child: ElevatedButton(
              onPressed: () {
                authService.signInWithEmailAndPassword(
                    emailTextController.text, passwordTextController.text);
              },
              style: ElevatedButton.styleFrom(
                primary: dogeLilac,
                shape: new RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(defaultRadius)),
                ),
              ),
              child: Text(
                "Register",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  color: dogeBlack,
                  fontWeight: FontWeight.w400,
                ),
              )
          ),
        ),
        SizedBox(
          height: 3 * defaultPadding,
        ),
        SizedBox(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 30 - defaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: dogeWhite,
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(defaultRadius)),
                    ),
                  ),
                  child: Container(
                    height: 48,
                    width: 30,
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: dogeMidnight,
                      size: 28,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: defaultPadding),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       primary: dogeWhite,
              //       shape: new RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
              //       ),
              //     ),
              //     child: Container(
              //       height: 48,
              //       width: 30,
              //       child: Icon(
              //         FontAwesomeIcons.github,
              //         color: dogeMidnight,
              //         size: 30,
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: defaultPadding),
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     style: ElevatedButton.styleFrom(
              //       primary: dogeWhite,
              //       shape: new RoundedRectangleBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
              //       ),
              //     ),
              //     child: Container(
              //       height: 48,
              //       width: 30,
              //       child: Icon(
              //         FontAwesomeIcons.facebook,
              //         color: dogeMidnight,
              //         size: 30,
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: dogeWhite,
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(defaultRadius)),
                    ),
                  ),
                  child: Container(
                    height: 48,
                    width: 30,
                    child: Icon(
                      FontAwesomeIcons.solidUserCircle,
                      color: dogeMidnight,
                      size: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30 - defaultPadding,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
