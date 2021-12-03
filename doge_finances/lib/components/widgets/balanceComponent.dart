import 'package:doge_finances/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:doge_finances/constants.dart';

class BalanceComponent extends StatefulWidget {
  const BalanceComponent({Key? key}) : super(key: key);

  @override
  _BalanceComponentState createState() => _BalanceComponentState();
}

class _BalanceComponentState extends State<BalanceComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(2*defaultPadding, 2*defaultPadding, 2*defaultPadding, 2*defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              "Balanço Total",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: dogeIce.withOpacity(0.9),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "R\$ 2,100.00",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.montserrat(
                    fontSize: 36,
                    color: dogeWhite,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ]
            )
          ],
        ),
    );
  }
}
