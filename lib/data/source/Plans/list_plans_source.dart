import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/list_plans_abstract.dart';
import 'package:kita_kerja/models/Plans/response/list_plans_response.dart';

class ListPlansSourceImpl implements ListPlansSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListPlansSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListPlansResponse> listPlans() {
  //   // TODO: implement listPlans
  //   throw UnimplementedError();
  // }
  @override
  Future<ListPlansResponse> listPlans() async {
    String url = AppEndpoints.listPlans;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListPlansResponse responseModel =
            ListPlansResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListPlansResponse responseModel =
          ListPlansResponse.fromJson(data);
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