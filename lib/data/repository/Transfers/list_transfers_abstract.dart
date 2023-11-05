import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transfers/response/list_transfers_response.dart';

abstract class ListTransfersRepo {
  Future<Either<Failure, ListTransfersResponse>> listTransfers();
}