import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/createPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/createPaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/createPaymentPageResponse.dart';

class CreatePaymentPageSourceImpl implements CreatePaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CreatePaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<CreatePaymentPageResponse> createPaymentPage({required CreatePaymentPages payload}) {
  //   // TODO: implement createPaymentPage
  //   throw UnimplementedError();
  // }

    @override
  Future<CreatePaymentPageResponse> createPaymentPage(
      {required CreatePaymentPages payload}) async {
    String url = AppEndpoints.createPaymentPage;
    final body = {
      "name": payload.name,
      "amount": payload.amount,
      "description": payload.description,
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
        final CreatePaymentPageResponse responseModel =
            CreatePaymentPageResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final CreatePaymentPageResponse responseModel =
          CreatePaymentPageResponse.fromJson(data);
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