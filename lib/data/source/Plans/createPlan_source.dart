import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/createPlan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/createPlan.dart';
import 'package:kita_kerja/models/Plans/response/createPlanResponse.dart';

class CreatePlanSourceImpl implements CreatePlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CreatePlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<CreatePlanResponse> createPlan({required CreatePlan payload}) {
  //   // TODO: implement createPlan
  //   throw UnimplementedError();
  // }
@override
  Future<CreatePlanResponse> createPlan(
      {required CreatePlan payload}) async {
    String url = AppEndpoints.createPlan;
    final body = {
      "name": payload.name,
      "amount": payload.amount,
      "interval": payload.interval,
    };
    final response = await networkRetry.networkRetry(
      () => networkRequest.post(
        url,
        body: body,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final CreatePlanResponse responseModel =
            CreatePlanResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final CreatePlanResponse responseModel =
          CreatePlanResponse.fromJson(data);
      try {
        if (responseModel.status == false) {
          throw Exception(data['message']);
        } else {
          final errorMessage = data['message'];
          throw Exception("API failed");
        }
      } on Exception catch (_) {
        rethrow;
      }
    }
  }
}