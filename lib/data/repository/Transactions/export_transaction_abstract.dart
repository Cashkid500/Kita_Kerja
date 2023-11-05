import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/export_transaction_response.dart';

abstract class ExportTransactionRepo {
  Future<Either<Failure, ExportTransactionResponse>> exportTransaction();
}