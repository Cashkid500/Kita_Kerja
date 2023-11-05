import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/response/fetch_plan_response.dart';

abstract class FetchPlanRepo {
  Future<Either<Failure, FetchPlanResponse>> fetchPlan ();
}