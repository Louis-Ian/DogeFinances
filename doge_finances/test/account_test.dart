import 'package:doge_finances/models/transfer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:doge_finances/models/account.dart';

void main() {
  const acc_color = Colors.white;

  group("Account", () {
    test("Empty creation", () {
      final account = Account.empty(acc_color);

      expect(account.balance, 0);
      expect(account.color, acc_color);
    });

    test("Creation", () {
      final account = Account(100, acc_color, List<Transfer>.empty());

      expect(account.balance, 100);
      expect(account.color, acc_color);
      expect(account.payments.length, 0);
    });

    test("Multiple IDs", () {
      final account1 = Account.empty(acc_color);
      final account2 = Account.empty(acc_color);

      expect(account1.id, 2);
      expect(account2.id, 3);
    });

    test("New deposit", () {
      final account = Account.empty(acc_color);

      account.addPayment(Transfer(20, account, null, "test deposit", DateTime(2022, 1, 15)));

      expect(account.balance, 20);
      expect(account.payments.last.value, 20);
      expect(account.payments.last.originAccountID, account);
      expect(account.payments.last.description, "test deposit");
      expect(account.payments.last.date.year, 2020);
      expect(account.payments.last.date.month, 1);
      expect(account.payments.last.date.day, 15);
    });
  });
}