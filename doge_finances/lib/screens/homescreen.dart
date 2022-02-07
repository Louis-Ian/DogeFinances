import 'package:doge_finances/components/widgets/addPaymentButton.dart';
import 'package:doge_finances/components/widgets/balanceComponent.dart';
import 'package:doge_finances/components/widgets/transactionItem.dart';
import 'package:flutter/material.dart';
import 'package:doge_finances/theme/colors.dart';
import 'package:doge_finances/constants.dart';
import 'package:doge_finances/components/widgets/accountInfoWidget.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.fromLTRB(0, 0, defaultPadding, 2 * defaultPadding),
          child: AddPaymentButton()),
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
                        borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
                      ),
                      child: BalanceComponent(),
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
                  padding: EdgeInsets.only(
                    top: largePadding,
                    bottom: largePadding,
                    left: 3*defaultPadding,
                    right: 3*defaultPadding,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(2*defaultPadding),
                      topRight: const Radius.circular(2*defaultPadding),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        dogeCloudy.withOpacity(1.0),
                        dogeCloudy.withOpacity(0.4)
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transações",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: dogeIce,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, defaultPadding, 0 , defaultPadding),
                        child: TransactionItem(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, defaultPadding, 0 , defaultPadding),
                        child: TransactionItem(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, defaultPadding, 0 , defaultPadding),
                        child: TransactionItem(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, defaultPadding, 0 , defaultPadding),
                        child: TransactionItem(),
                      ),
                    ],
                  )
                )
              ],
            ),
          ]
        ),
      ),
    );
  }
}
