import 'package:kita_kerja/models/Transactions/response/verify_transaction_response.dart';

abstract class VerifyTransactionSource {
  Future<VerifyTransactionResponse> verifyTransaction();
}