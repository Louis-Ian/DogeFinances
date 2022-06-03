import 'package:doge_finances/app/doge_finances/domain/repositories/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:doge_finances/app/doge_finances/domain/entities/colors.dart';
import 'package:provider/provider.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthenticationService>(context);

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: dogeCloudy,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: IconButton(
        onPressed: () {
          authService.signOut();
        },
        padding: EdgeInsets.only(bottom: 3),
        icon: Icon(
          FontAwesomeIcons.solidUser,
          size: 34,
          color: dogeLilac,
        ),
      ),
      // child: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //
      //     },
      //     onLongPress: () {
      //       authService.signOut();
      //     },
      //     style: ElevatedButton.styleFrom(
      //       primary: dogeCloudy,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8.0)
      //       ),
      //       minimumSize: Size.zero,
      //       padding: EdgeInsets.fromLTRB(6.0, 4.0, 6.0, 8.0),
      //     ),
      //     child: Icon(
      //       FontAwesomeIcons.solidUser,
      //       color: dogeWhite.withOpacity(0.75),
      //       size: 34,
      //     ),
      //   ),
      // ),
    );
  }
}
