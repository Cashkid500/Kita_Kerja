import 'package:kita_kerja/models/Transactions/body/initialize_transaction.dart';
import 'package:kita_kerja/models/Transactions/response/initialize_transaction_response.dart';

abstract class InitializeTransactionSource {
  Future<InitializeTransactionResponse> initializeTransaction({
    required InitializeTransaction payload,
  });
}