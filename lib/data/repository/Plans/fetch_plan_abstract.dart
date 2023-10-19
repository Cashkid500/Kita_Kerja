import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/response/fetchPlanResponse.dart';

abstract class FetchPlanRepo {
  Future<Either<Failure, FetchPlanResponse>> fetchPlan ();
}