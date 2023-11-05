import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/check_slug_availability_response.dart';

abstract class CheckSlugAvailabilityRepo {
  Future<Either<Failure, CheckSlugAvailabilityResponse>> checkSlugAvailability();
}