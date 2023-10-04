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

  @override
  Future<ListTransactionResponse> listTransaction() {
    // TODO: implement listTransaction
    throw UnimplementedError();
  }
  
}