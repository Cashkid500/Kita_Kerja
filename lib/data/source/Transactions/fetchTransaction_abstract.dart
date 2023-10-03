import 'package:kita_kerja/models/Transactions/response/fetchTransactionResponse.dart';

abstract class FetchTransactionSource {
  Future<FetchTransactionResponse> fetchTransaction();
}