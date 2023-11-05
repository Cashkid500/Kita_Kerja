import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/body/update_plan.dart';
import 'package:kita_kerja/models/Plans/response/update_plan_response.dart';

abstract class UpdatePlanRepo {
  Future<Either<Failure, UpdatePlanResponse>> updatePlan ({
    required UpdatePlan payload,
  });
}