import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetch_payment_page_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetch_payment_page_response.dart';

class FetchPaymentPageSourceImpl implements FetchPaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchPaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<FetchPaymentPageResponse> fetchPaymentPage() {
  //   // TODO: implement fetchPaymentPage
  //   throw UnimplementedError();
  // }

@override
  Future<FetchPaymentPageResponse> fetchPaymentPage() async {
    String url = AppEndpoints.fetchPaymentPage;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final FetchPaymentPageResponse responseModel =
            FetchPaymentPageResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final FetchPaymentPageResponse responseModel =
          FetchPaymentPageResponse.fromJson(data);
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