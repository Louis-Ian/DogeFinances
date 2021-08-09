import 'package:doge_finances/data/payment.dart';

class Transfer extends Payment {
  Payment originAccount;

  Transfer(this.originAccount, value, destinyAccount, date) : super(value, destinyAccount, date);

}