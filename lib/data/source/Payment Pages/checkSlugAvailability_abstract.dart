import 'package:kita_kerja/models/Payment%20Pages/response/checkSlugAvailabilityResponse.dart';

abstract class CheckSlugAvailabilitySource {
  Future<CheckSlugAvailabilityResponse> checkSlugAvailability();
}