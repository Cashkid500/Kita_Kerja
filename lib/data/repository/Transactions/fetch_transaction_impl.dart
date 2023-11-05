import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/fetch_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/fetch_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/fetch_transaction_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class FetchTransactionRepoImpl implements FetchTransactionRepo{
  final NetworkInfo fetch;
  final FetchTransactionSource transaction;

  FetchTransactionRepoImpl({required Ref ref})
      : transaction = ref.read(fetchTransactionSourceProvider),
        fetch = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, FetchTransactionResponse>> fetchTransaction() async {
    ServiceRunner<Failure, FetchTransactionResponse> sR = ServiceRunner(fetch);

    return sR.tryRemoteandCatch(
        call: transaction.fetchTransaction(), 
        errorTitle: "Transaction Not Fetched");
  }
}