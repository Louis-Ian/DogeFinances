import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:doge_finances/theme/colors.dart';
import '../../constants.dart';

class AddTransactionButton extends StatefulWidget {
  // const AddTransactionButton({Key key}) : super(key: key);

  @override
  _AddTransactionButtonState createState() => _AddTransactionButtonState();
}

class _AddTransactionButtonState extends State<AddTransactionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {

      },
      child: Icon(
        CupertinoIcons.arrow_up_arrow_down,
        color: dogeWhite.withOpacity(0.9),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
      ),
      backgroundColor: dogeIce.withOpacity(0.8),
    );
  }
}
