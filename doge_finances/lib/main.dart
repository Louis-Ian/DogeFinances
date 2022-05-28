import 'package:flutter/material.dart';

import 'package:doge_finances/screens/home_screen.dart';
import 'package:doge_finances/screens/login_screen.dart';
import 'package:doge_finances/screens/signup_screen.dart';

import 'package:doge_finances/authentication_wrapper.dart';
import 'package:doge_finances/services/authenticationService.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:doge_finances/firebase_options.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(),
        ),
      ],
      child: MaterialApp(
        title: 'Doge Finances',
        initialRoute: '/',
        routes: {
          '/': (context) => AuthenticationWrapper(),
          '/login': (context) => Loginscreen(),
          '/home': (context) => Homescreen(),
          '/signup': (context) => Signupscreen(),
        },
      ),
    );
  }
}