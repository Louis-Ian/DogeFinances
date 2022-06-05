import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'package:doge_finances/app/doge_finances/domain/repositories/account_repository.dart';
import 'package:doge_finances/app/doge_finances/domain/usecases/add_account.dart';
import 'delete_account_test.mocks.dart';

@GenerateMocks([AccountsRepository])
void main() {
  AddAccount usecase;
  MockAccountsRepository repository;
  group(
    'Delete Account',
    () async {
      const accColor = Colors.white;
      repository = MockAccountsRepository();
      usecase = AddAccount(repository);

      test(
        'Delete existing account',
        () {
          
        },
      );
    },
  );
}
