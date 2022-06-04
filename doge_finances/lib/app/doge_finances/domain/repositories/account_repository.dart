import 'package:dartz/dartz.dart';

import '../../core/errors/failures.dart';
import '../entities/account.dart';

abstract class AccountRepository {
  Future<Either<Failure, Account>> addAccount(Account account);
  Future<Either<Failure, bool>> deleteAccount(Account account);
  Future<Either<Failure, List<Account>>> getAccounts();
}
