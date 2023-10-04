import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/CheckSlugAvailability_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/checkSlugAvailabilityResponse.dart';

class CheckSlugAvailabilitySourceImpl implements CheckSlugAvailabilitySource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CheckSlugAvailabilitySourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });
  
  @override
  Future<CheckSlugAvailabilityResponse> checkSlugAvailability() {
    // TODO: implement checkSlugAvailability
    throw UnimplementedError();
  }
  
}