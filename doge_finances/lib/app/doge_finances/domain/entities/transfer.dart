import 'account.dart';

final String transfersTable = "transfers";

class TransferFields {
  static final String id = "_id";
  static final String value = "value";
  static final String originAccountID = "originAccountID";
  static final String destinationAccountID = "destinationAccountID";
  static final String description = "description";
  static final String date = "date";
}

class Transfer {
  static num _id = 0;
  num id;
  double value;
  Account originAccountID;
  Account? destinationAccountID;  // If destination account is null, then it's a deposit/withdraw/expense (not a transfer)
  String description;
  DateTime date;

  Transfer(this.value, this.originAccountID, this.destinationAccountID, this.description, this.date) : id = _id{
    _id++;
  }
}
