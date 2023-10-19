import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/body/createPlan.dart';
import 'package:kita_kerja/models/Plans/response/createPlanResponse.dart';

abstract class CreatePlanRepo {
  Future<Either<Failure, CreatePlanResponse>> createPlan ({
    required CreatePlan payload,
  });
}