import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/verify_transaction_response.dart';

abstract class VerifyTransactionRepo {
  Future<Either<Failure, VerifyTransactionResponse>> verifyTransaction();
}