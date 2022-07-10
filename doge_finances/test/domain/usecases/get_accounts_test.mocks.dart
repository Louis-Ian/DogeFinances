// Mocks generated by Mockito 5.2.0 from annotations
// in doge_finances/test/domain/usecases/get_accounts_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:doge_finances/app/doge_finances/core/errors/failures.dart'
    as _i5;
import 'package:doge_finances/app/doge_finances/domain/entities/account.dart'
    as _i6;
import 'package:doge_finances/app/doge_finances/domain/repositories/account_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [AccountsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccountsRepository extends _i1.Mock
    implements _i3.AccountsRepository {
  MockAccountsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, int>> addAccount(_i6.Account? account) =>
      (super.noSuchMethod(Invocation.method(#addAccount, [account]),
              returnValue: Future<_i2.Either<_i5.Failure, int>>.value(
                  _FakeEither_0<_i5.Failure, int>()))
          as _i4.Future<_i2.Either<_i5.Failure, int>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, int>> deleteAccount(
          _i6.Account? account) =>
      (super.noSuchMethod(Invocation.method(#deleteAccount, [account]),
              returnValue: Future<_i2.Either<_i5.Failure, int>>.value(
                  _FakeEither_0<_i5.Failure, int>()))
          as _i4.Future<_i2.Either<_i5.Failure, int>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.Account>>> getAccounts() =>
      (super.noSuchMethod(Invocation.method(#getAccounts, []),
          returnValue: Future<_i2.Either<_i5.Failure, List<_i6.Account>>>.value(
              _FakeEither_0<_i5.Failure, List<_i6.Account>>())) as _i4
          .Future<_i2.Either<_i5.Failure, List<_i6.Account>>>);
}
