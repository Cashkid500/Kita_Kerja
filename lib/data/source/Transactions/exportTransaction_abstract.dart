import 'package:kita_kerja/models/Transactions/response/exportTransactionResponse.dart';

abstract class ExportTransactionSource {
  Future<ExportTransactionResponse> exportTransaction();
}