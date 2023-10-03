import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';

abstract class InitializeTransactionSource {
  Future<InitializeTransactionResponse> initializeTransaction({
    required InitializeTransaction payload,
  });
}