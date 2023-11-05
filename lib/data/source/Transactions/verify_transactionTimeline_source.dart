import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/verify_transaction_response.dart';

class VerifyTransactionSourceImpl implements VerifyTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  VerifyTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<VerifyTransactionResponse> verifyTransaction() {
  //   // TODO: implement verifyTransaction
  //   throw UnimplementedError();
  // }
  @override
  Future<VerifyTransactionResponse> verifyTransaction() async {
    String url = AppEndpoints.verifyTransaction;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final VerifyTransactionResponse responseModel =
            VerifyTransactionResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final VerifyTransactionResponse responseModel =
          VerifyTransactionResponse.fromJson(data);
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