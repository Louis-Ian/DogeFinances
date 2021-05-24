import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doge_finances/theme/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doge Finances',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dogeMidnight,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 12, 24),
        child: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(
            CupertinoIcons.arrow_up_arrow_down,
            color: dogeWhite.withOpacity(0.9),
          ),
          shape: RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: dogeIce.withOpacity(0.8),
        ),
      ),
    );
  }
}

class AddAccountButton extends StatefulWidget {
  // const AddAccountButton({Key key}) : super(key: key);

  @override
  _AddAccountButtonState createState() => _AddAccountButtonState();
}

class _AddAccountButtonState extends State<AddAccountButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: (){

      },
      label: Text("Adicionar Conta"),
    );
  }
}
