import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/check_slug_availability_response.dart';

class CheckSlugAvailabilitySourceImpl implements CheckSlugAvailabilitySource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CheckSlugAvailabilitySourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });
  
  // @override
  // Future<CheckSlugAvailabilityResponse> checkSlugAvailability() {
  //   // TODO: implement checkSlugAvailability
  //   throw UnimplementedError();
  // }

    @override
  Future<CheckSlugAvailabilityResponse> checkSlugAvailability() async {
    String url = AppEndpoints.checkSlugAvailability;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final CheckSlugAvailabilityResponse responseModel =
            CheckSlugAvailabilityResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final CheckSlugAvailabilityResponse responseModel =
          CheckSlugAvailabilityResponse.fromJson(data);
      try {
        if (responseModel.status == false) {
          throw Exception(data['message']);
        } else {
          final errorMessage = data['message'];
          throw Exception(errorMessage);
        }
      } on Exception catch (_) {
        rethrow;
      }
    }
  }
}