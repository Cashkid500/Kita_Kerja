import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/exportTransaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/exportTransactionResponse.dart';

class ExportTransactionSourceImpl implements ExportTransactionSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ExportTransactionSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<ExportTransactionResponse> exportTransaction() {
    // TODO: implement exportTransaction
    throw UnimplementedError();
  }
  
}