import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/fetch_plan_abstract.dart';
import 'package:kita_kerja/models/Plans/response/fetch_plan_response.dart';

class FetchPlanSourceImpl implements FetchPlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchPlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<FetchPlanResponse> fetchPlan() {
  //   // TODO: implement fetchPlan
  //   throw UnimplementedError();
  // }
  @override
  Future<FetchPlanResponse> fetchPlan() async {
    String url = AppEndpoints.fetchPlan;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
    ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final FetchPlanResponse responseModel =
            FetchPlanResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final FetchPlanResponse responseModel =
          FetchPlanResponse.fromJson(data);
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