import 'package:doge_finances/data/Transaction.dart';

class Transfer extends Transaction {
  Transaction originAccount;

  Transfer(this.originAccount, value, destinyAccount, date) : super(value, destinyAccount, date);

}