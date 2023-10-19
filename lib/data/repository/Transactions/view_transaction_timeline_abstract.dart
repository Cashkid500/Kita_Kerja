import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/viewTransactionTimelineResponse.dart';

abstract class ViewTransactionTimelineRepo {
  Future<Either<Failure, ViewTransactionTimelineResponse>> viewTransactionTimeline();
}