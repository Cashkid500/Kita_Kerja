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

  @override
  Future<InitializeTransactionResponse> initializeTransaction({required InitializeTransaction payload}) {
    // TODO: implement initializeTransaction
    throw UnimplementedError();
  }
  
}