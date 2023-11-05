import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/fetch_transaction_response.dart';

abstract class FetchTransactionRepo {
  Future<Either<Failure, FetchTransactionResponse>> fetchTransaction();
}