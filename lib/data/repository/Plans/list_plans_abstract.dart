import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/response/listPlansResponse.dart';

abstract class ListPlansRepo {
  Future<Either<Failure, ListPlansResponse>> listPlans ();
}