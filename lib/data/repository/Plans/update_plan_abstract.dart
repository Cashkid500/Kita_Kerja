import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/body/updatePlan.dart';
import 'package:kita_kerja/models/Plans/response/updatePlanResponse.dart';

abstract class UpdatePlanRepo {
  Future<Either<Failure, UpdatePlanResponse>> updatePlan ({
    required UpdatePlan payload,
  });
}