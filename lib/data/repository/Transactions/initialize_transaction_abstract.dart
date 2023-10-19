import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';

abstract class InitializeTransactionRepo {
  Future<Either<Failure, InitializeTransactionResponse>> initializeTransaction({
    required InitializeTransaction payload,
  });
}