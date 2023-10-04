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

  @override
  Future<FetchTransactionResponse> fetchTransaction() {
    // TODO: implement fetchTransaction
    throw UnimplementedError();
  }
  
}