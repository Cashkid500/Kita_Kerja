import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/listPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/listPaymentPagesResponse.dart';

class ListPaymentPageSourceImpl implements ListPaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListPaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListPaymentPagesResponse> listPaymentPages() {
  //   // TODO: implement listPaymentPages
  //   throw UnimplementedError();
  // }
  @override
  Future<ListPaymentPagesResponse> listPaymentPages() async {
    String url = AppEndpoints.listPaymentPages;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListPaymentPagesResponse responseModel =
            ListPaymentPagesResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListPaymentPagesResponse responseModel =
          ListPaymentPagesResponse.fromJson(data);
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