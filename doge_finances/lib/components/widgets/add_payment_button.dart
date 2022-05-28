import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:doge_finances/theme/colors.dart';
import '../../constants.dart';

class AddPaymentButton extends StatefulWidget {
  // const AddPaymentButton({Key key}) : super(key: key);

  @override
  _AddPaymentButtonState createState() => _AddPaymentButtonState();
}

class _AddPaymentButtonState extends State<AddPaymentButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {

      },
      child: Icon(
        CupertinoIcons.arrow_up_arrow_down,
        color: dogeMidnight.withOpacity(0.9),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
      ),
      backgroundColor: dogeIce.withOpacity(0.8),
    );
  }
}
