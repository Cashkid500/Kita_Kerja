import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/updatePaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/updatePaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/updatePaymentPageResponse.dart';

class UpdatePaymentPageSourceImpl implements UpdatePaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdatePaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<UpdatePaymentPageResponse> updatePaymentPage({required UpdatePaymentPages payload}) {
  //   // TODO: implement updatePaymentPage
  //   throw UnimplementedError();
  // }
@override
  Future<UpdatePaymentPageResponse> updatePaymentPage(
      {required UpdatePaymentPages payload}) async {
    String url = AppEndpoints.updatePaymentPage;
    final body = {
      "name": payload.name,
      "amount": payload.amount,
      "description": payload.description,
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
        final UpdatePaymentPageResponse responseModel =
            UpdatePaymentPageResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final UpdatePaymentPageResponse responseModel =
          UpdatePaymentPageResponse.fromJson(data);
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