import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transfers/list_transfers_abstract.dart';
import 'package:kita_kerja/data/source/Transfers/list_transfers_abstract.dart';
import 'package:kita_kerja/models/Transfers/response/list_transfers_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListTransfersRepoImpl implements ListTransfersRepo{
  final NetworkInfo list;
  final ListTransfersSource transfers;

  ListTransfersRepoImpl({required Ref ref})
      : transfers = ref.read(listTransfersSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListTransfersResponse>> listTransfers() async {
    ServiceRunner<Failure, ListTransfersResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: transfers.listTransfers(), errorTitle: "No Transfers Listed");
  }
}