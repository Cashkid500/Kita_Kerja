import 'package:kita_kerja/models/Transactions/response/fetch_transaction_response.dart';

abstract class FetchTransactionSource {
  Future<FetchTransactionResponse> fetchTransaction();
}