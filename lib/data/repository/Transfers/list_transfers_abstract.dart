import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transfers/response/listTransfersResponse.dart';

abstract class ListTransfersRepo {
  Future<Either<Failure, ListTransfersResponse>> listTransfers();
}