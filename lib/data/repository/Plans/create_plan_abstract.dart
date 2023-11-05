import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/body/create_plan.dart';
import 'package:kita_kerja/models/Plans/response/create_plan_response.dart';

abstract class CreatePlanRepo {
  Future<Either<Failure, CreatePlanResponse>> createPlan ({
    required CreatePlan payload,
  });
}