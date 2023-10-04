import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/transactionsTotal_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/transactionsTotalResponse.dart';

class TransactionsTotalSourceImpl implements TransactionsTotalSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  TransactionsTotalSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<TransactionsTotalResponse> transactionsTotal() {
    // TODO: implement transactionsTotal
    throw UnimplementedError();
  }
  
}