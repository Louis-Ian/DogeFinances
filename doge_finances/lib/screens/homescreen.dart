import 'package:doge_finances/components/widgets/addTransactionButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';
import 'package:doge_finances/components/widgets/accountInfoWidget.dart';
import 'package:flutter/rendering.dart';

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
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2*defaultPadding, 2*defaultPadding, 2*defaultPadding, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: dogeCloudy.withOpacity(0.8),
                        borderRadius: BorderRadius.all(Radius.circular(defaultRadius))
                      ),
                    ),
                  ),
                ),
                GridView.builder(
                  padding: const EdgeInsets.all(2*defaultPadding),
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: largePadding,
                    mainAxisSpacing: largePadding,
                    childAspectRatio: 160/90,
                  ),
                  itemBuilder: (context, index) => AccountInfo(),
                ),
                Container(
                  height: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2*defaultRadius)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        dogeLilac.withOpacity(1.0),
                        dogeLilac.withOpacity(0.7)
                      ]
                    )
                  ),
                )
              ],
            ),
          ]
        ),
      ),
    );
  }
}
