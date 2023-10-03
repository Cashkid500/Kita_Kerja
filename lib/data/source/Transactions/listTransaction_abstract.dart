import 'package:kita_kerja/models/Transactions/response/listTransactionResponse.dart';

abstract class ListTransactionSource {
  Future<ListTransactionResponse> listTransaction();
}