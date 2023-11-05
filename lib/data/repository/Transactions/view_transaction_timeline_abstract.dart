import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/view_transaction_timeline_response.dart';

abstract class ViewTransactionTimelineRepo {
  Future<Either<Failure, ViewTransactionTimelineResponse>> viewTransactionTimeline();
}