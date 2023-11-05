import 'package:kita_kerja/models/Transactions/response/list_transaction_response.dart';

abstract class ListTransactionSource {
  Future<ListTransactionResponse> listTransaction();
}