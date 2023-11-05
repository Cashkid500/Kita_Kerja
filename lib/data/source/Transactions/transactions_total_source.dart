import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/transactions_total_response.dart';

class TransactionsTotalSourceImpl implements TransactionsTotalSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  TransactionsTotalSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<TransactionsTotalResponse> transactionsTotal() {
  //   // TODO: implement transactionsTotal
  //   throw UnimplementedError();
  // }
  @override
  Future<TransactionsTotalResponse> transactionsTotal() async {
    String url = AppEndpoints.transactionsTotal;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final TransactionsTotalResponse responseModel =
            TransactionsTotalResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final TransactionsTotalResponse responseModel =
          TransactionsTotalResponse.fromJson(data);
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