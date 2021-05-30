import 'package:doge_finances/constants.dart';
import 'package:doge_finances/utils/RandomBrightColor.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  // const AccountInfo({Key key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  bool _selected = false;
  Color _accountColor = RandomBrightColor().generate();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selected ? _selected = false : _selected = true;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        primary: _selected ? _accountColor.withOpacity(0.2) : _accountColor.withOpacity(1),
      ),
      child: Container(
      ),
    );
  }
}
