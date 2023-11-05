import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/export_transaction_response.dart';

class ExportTransactionSourceImpl implements ExportTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ExportTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ExportTransactionResponse> exportTransaction() {
  //   // TODO: implement exportTransaction
  //   throw UnimplementedError();
  // }
  @override
  Future<ExportTransactionResponse> exportTransaction() async {
    String url = AppEndpoints.exportTransaction;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ExportTransactionResponse responseModel =
            ExportTransactionResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ExportTransactionResponse responseModel =
          ExportTransactionResponse.fromJson(data);
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