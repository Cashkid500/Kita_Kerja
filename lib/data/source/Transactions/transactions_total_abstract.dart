import 'package:kita_kerja/models/Transactions/response/transactions_total_response.dart';

abstract class TransactionsTotalSource {
  Future<TransactionsTotalResponse> transactionsTotal();
}