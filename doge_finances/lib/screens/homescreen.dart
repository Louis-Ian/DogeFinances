import 'package:doge_finances/components/widgets/addTransactionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';
import 'package:doge_finances/components/widgets/accountInfoWidget.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dogeMidnight,
      floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(
              0, 0, defaultPadding, 2 * defaultPadding),
          child: AddTransactionButton()),
      body: SafeArea(
        child: Column(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(defaultPadding),
              shrinkWrap: true,
              itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: 16/9,
              ),
              itemBuilder: (context, index) => AccountInfo(),
            ),
          ],
        ),
      ),
    );
  }
}
