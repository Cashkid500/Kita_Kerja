import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/checkSlugAvailabilityResponse.dart';

abstract class CheckSlugAvailabilityRepo {
  Future<Either<Failure, CheckSlugAvailabilityResponse>> checkSlugAvailability();
}