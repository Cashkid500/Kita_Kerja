import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/initializeTransaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';

class InitializeTransactionSourceImpl implements InitializeTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  InitializeTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<InitializeTransactionResponse> initializeTransaction({required InitializeTransaction payload}) {
  //   // TODO: implement initializeTransaction
  //   throw UnimplementedError();
  // }
  @override
  Future<InitializeTransactionResponse> initializeTransaction(
      {required InitializeTransaction payload}) async {
    String url = AppEndpoints.initializeTransaction;
    final body = {
      "email": payload.email,
      "amount": payload.amount,
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
        final InitializeTransactionResponse responseModel =
            InitializeTransactionResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final InitializeTransactionResponse responseModel =
          InitializeTransactionResponse.fromJson(data);
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