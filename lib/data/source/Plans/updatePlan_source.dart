import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/updatePlan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/updatePlan.dart';
import 'package:kita_kerja/models/Plans/response/updatePlanResponse.dart';

class UpdatePlanSourceImpl implements UpdatePlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdatePlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<UpdatePlanResponse> updatePlan({required UpdatePlan payload}) {
  //   // TODO: implement updatePlan
  //   throw UnimplementedError();
  // }
  @override
  Future<UpdatePlanResponse> updatePlan(
      {required UpdatePlan payload}) async {
    String url = AppEndpoints.updatePlan;
    final body = {
      "name": payload.name,
      "amount": payload.amount,
    };
    final response = await networkRetry.networkRetry(
      () => networkRequest.put(
        url,
        body: body,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final UpdatePlanResponse responseModel =
            UpdatePlanResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final UpdatePlanResponse responseModel =
          UpdatePlanResponse.fromJson(data);
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