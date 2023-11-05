import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/transactions_total_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class TransactionsTotalRepoImpl implements TransactionsTotalRepo{
  final NetworkInfo total;
  final TransactionsTotalSource transaction;

  TransactionsTotalRepoImpl({required Ref ref})
      : transaction = ref.read(transactionsTotalSourceProvider),
        total = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, TransactionsTotalResponse>> transactionsTotal() async {
    ServiceRunner<Failure, TransactionsTotalResponse> sR = ServiceRunner(total);

    return sR.tryRemoteandCatch(
        call: transaction.transactionsTotal(), 
        errorTitle: "Transaction Total Error");
  }
}