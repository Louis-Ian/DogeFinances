import 'package:flutter/material.dart';

import 'package:doge_finances/screens/homescreen.dart';
import 'package:doge_finances/screens/loginscreen.dart';

import 'package:doge_finances/authenticationWrapper.dart';
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
        },
      ),
    );
  }
}