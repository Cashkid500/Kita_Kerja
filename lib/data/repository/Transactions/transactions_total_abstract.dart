import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/transactions_total_response.dart';

abstract class TransactionsTotalRepo {
  Future<Either<Failure, TransactionsTotalResponse>> transactionsTotal();
}