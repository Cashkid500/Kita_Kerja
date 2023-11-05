import 'package:kita_kerja/models/Payment%20Pages/response/check_slug_availability_response.dart';

abstract class CheckSlugAvailabilitySource {
  Future<CheckSlugAvailabilityResponse> checkSlugAvailability();
}