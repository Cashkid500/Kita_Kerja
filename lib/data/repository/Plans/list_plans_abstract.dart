import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/response/list_plans_response.dart';

abstract class ListPlansRepo {
  Future<Either<Failure, ListPlansResponse>> listPlans ();
}