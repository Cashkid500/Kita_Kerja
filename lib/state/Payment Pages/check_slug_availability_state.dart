import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/checkSlugAvailabilityResponse.dart';

class CheckSlugAvailabilityState {}

class CheckSlugAvailabilityInitial extends CheckSlugAvailabilityState {}

class CheckSlugAvailabilityLoading extends CheckSlugAvailabilityState {}

class CheckSlugAvailabilityFailure extends CheckSlugAvailabilityState {
    final Failure failure;
    CheckSlugAvailabilityFailure({required this.failure});
}

class CheckSlugAvailabilitySuccess extends CheckSlugAvailabilityState {
    final CheckSlugAvailabilityResponse responseData;
    CheckSlugAvailabilitySuccess({required this.responseData});
}