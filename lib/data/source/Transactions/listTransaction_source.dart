import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/listTransaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/listTransactionResponse.dart';

class ListTransactionSourceImpl implements ListTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListTransactionResponse> listTransaction() {
  //   // TODO: implement listTransaction
  //   throw UnimplementedError();
  // }
  @override
  Future<ListTransactionResponse> listTransaction() async {
    String url = AppEndpoints.listTransaction;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListTransactionResponse responseModel =
            ListTransactionResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListTransactionResponse responseModel =
          ListTransactionResponse.fromJson(data);
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