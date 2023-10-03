import 'package:kita_kerja/models/Transactions/response/transactionsTotalResponse.dart';

abstract class TransactionsTotalSource {
  Future<TransactionsTotalResponse> transactionsTotal();
}