import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/list_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/list_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/list_transaction_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListTransactionRepoImpl implements ListTransactionRepo{
  final NetworkInfo list;
  final ListTransactionSource transaction;

  ListTransactionRepoImpl({required Ref ref})
      : transaction = ref.read(listTransactionSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListTransactionResponse>> listTransaction() async {
    ServiceRunner<Failure, ListTransactionResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: transaction.listTransaction(), 
        errorTitle: "Transaction Not Listed");
  }
}