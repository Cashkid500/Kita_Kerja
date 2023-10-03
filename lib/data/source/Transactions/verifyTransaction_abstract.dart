import 'package:kita_kerja/models/Transactions/response/verifyTransactionResponse.dart';

abstract class VerifyTransactionSource {
  Future<VerifyTransactionResponse> verifyTransaction();
}