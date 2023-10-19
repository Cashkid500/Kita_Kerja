import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/listTransactionResponse.dart';

abstract class ListTransactionRepo {
  Future<Either<Failure, ListTransactionResponse>> listTransaction();
}