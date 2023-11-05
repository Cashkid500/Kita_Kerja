import 'package:kita_kerja/models/Transactions/response/export_transaction_response.dart';

abstract class ExportTransactionSource {
  Future<ExportTransactionResponse> exportTransaction();
}