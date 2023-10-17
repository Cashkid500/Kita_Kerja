import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/fetchTransaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/fetchTransactionResponse.dart';

class FetchTransactionSourceImpl implements FetchTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<FetchTransactionResponse> fetchTransaction() {
  //   // TODO: implement fetchTransaction
  //   throw UnimplementedError();
  // }
  @override
  Future<FetchTransactionResponse> fetchTransaction() async {
    String url = AppEndpoints.fetchTransaction;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final FetchTransactionResponse responseModel =
            FetchTransactionResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final FetchTransactionResponse responseModel =
          FetchTransactionResponse.fromJson(data);
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