import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/export_transaction_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ExportTransactionRepoImpl implements ExportTransactionRepo{
  final NetworkInfo export;
  final ExportTransactionSource transaction;

  ExportTransactionRepoImpl({required Ref ref})
      : transaction = ref.read(exportTransactionSourceProvider),
        export = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ExportTransactionResponse>> exportTransaction() async {
    ServiceRunner<Failure, ExportTransactionResponse> sR = ServiceRunner(export);

    return sR.tryRemoteandCatch(
        call: transaction.exportTransaction(), 
        errorTitle: "Transaction Not Exported");
  }
}