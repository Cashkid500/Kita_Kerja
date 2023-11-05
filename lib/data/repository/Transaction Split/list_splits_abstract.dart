import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transaction%20Split/response/list_splits_response.dart';

abstract class ListSplitsRepo {
  Future<Either<Failure, ListSplitsResponse>> listSplits();
}