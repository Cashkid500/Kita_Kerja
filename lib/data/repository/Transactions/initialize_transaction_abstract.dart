import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/body/initialize_transaction.dart';
import 'package:kita_kerja/models/Transactions/response/initialize_transaction_response.dart';

abstract class InitializeTransactionRepo {
  Future<Either<Failure, InitializeTransactionResponse>> initializeTransaction({
    required InitializeTransaction payload,
  });
}