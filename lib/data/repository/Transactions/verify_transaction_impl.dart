import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/verify_transaction_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class VerifyTransactionRepoImpl implements VerifyTransactionRepo{
  final NetworkInfo verify;
  final VerifyTransactionSource transaction;

  VerifyTransactionRepoImpl({required Ref ref})
      : transaction = ref.read(verifyTransactionSourceProvider),
        verify = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, VerifyTransactionResponse>> verifyTransaction() async {
    ServiceRunner<Failure, VerifyTransactionResponse> sR = ServiceRunner(verify);

    return sR.tryRemoteandCatch(
        call: transaction.verifyTransaction(), 
        errorTitle: "Transaction Not Verified");
  }
}