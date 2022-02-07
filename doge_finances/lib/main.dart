import 'package:doge_finances/screens/homescreen.dart';
import 'package:doge_finances/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:doge_finances/firebase_options.dart';

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
    return MaterialApp(
      title: 'Doge Finances',
      initialRoute: '/',
      routes: {
        '/': (context) => Loginscreen(),
        '/home': (context) => Homescreen(),
      },
    );
  }
}