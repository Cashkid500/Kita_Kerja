import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/initialize_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/initializeTransaction_abstract.dart';
import 'package:kita_kerja/models/Transactions/body/initializeTransaction.dart';
import 'package:kita_kerja/models/Transactions/response/initializeTransactionResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class InitializeTransactionRepoImpl implements InitializeTransactionRepo{
  final NetworkInfo update;
  final InitializeTransactionSource product;

  InitializeTransactionRepoImpl({required Ref ref})
      : product = ref.read(initializeTransactionSourceProvider),
        update = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, InitializeTransactionResponse>> initializeTransaction ({
    required InitializeTransaction payload,
  })async{
    ServiceRunner<Failure, InitializeTransactionResponse> sR = ServiceRunner(update);

    return sR.tryRemoteandCatch(
      call: product.initializeTransaction(payload: payload),
      errorTitle: "No Transaction Initialized"
    );
  }
}