import 'package:doge_finances/screens/homeScreen.dart';
import 'package:doge_finances/screens/loginScreen.dart';
import 'package:doge_finances/services/authenticationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';

class AuthenticationWrapper extends StatelessWidget {

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
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }
    );
  }
}
