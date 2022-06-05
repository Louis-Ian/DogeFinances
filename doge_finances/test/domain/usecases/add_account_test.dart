import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';

import 'package:doge_finances/app/doge_finances/domain/entities/account.dart';
import 'package:doge_finances/app/doge_finances/domain/repositories/account_repository.dart';
import 'package:doge_finances/app/doge_finances/domain/usecases/add_account.dart';
import 'add_account_test.mocks.dart';

@GenerateMocks([AccountsRepository])
void main() {
  AddAccount usecase;
  MockAccountsRepository repository;

  group(
    'Add Account',
    () {
      const accColor = Colors.white;
      repository = MockAccountsRepository();
      usecase = AddAccount(repository);
      test(
        'Add empty account',
        () async {
          // Arrange
          Account emptyAccount = Account(0, accColor, []);
          when(repository.addAccount(any))
              .thenAnswer((_) async => Right(emptyAccount.id as int));
          // Act
          final result = await usecase.execute(account: emptyAccount);
          // Assert
          expect(result, Right(emptyAccount.id as int));
          verify(repository.addAccount(emptyAccount));
          verifyNoMoreInteractions(repository);
        },
      );
    },
  );
}
