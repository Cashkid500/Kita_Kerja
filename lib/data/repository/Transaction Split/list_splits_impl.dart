import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transaction%20Split/list_splits_abstract.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/list_splits_abstract.dart';
import 'package:kita_kerja/models/Transaction%20Split/response/list_splits_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListSplitsRepoImpl implements ListSplitsRepo{
  final NetworkInfo list;
  final ListSplitsSource splits;

  ListSplitsRepoImpl({required Ref ref})
      : splits = ref.read(listSplitsSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListSplitsResponse>> listSplits() async {
    ServiceRunner<Failure, ListSplitsResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: splits.listSplits(), errorTitle: "No Splits Listed");
  }
}