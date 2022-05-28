import 'package:doge_finances/screens/home_screen.dart';
import 'package:doge_finances/screens/login_screen.dart';
import 'package:doge_finances/services/authenticationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthenticationService>(context);

    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if(snapshot.connectionState == ConnectionState.active){
          final User? user = snapshot.data;
          return user == null ? Loginscreen() : Homescreen();
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}
