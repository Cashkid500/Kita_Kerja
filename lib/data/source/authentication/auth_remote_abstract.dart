import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';

abstract class AuthSource {
  Future<InitializeTransactionResponse> initialize({
    required InitializeTransaction payload,
  });
}
