import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Plans/list_plans_abstract.dart';
import 'package:kita_kerja/data/source/Plans/listPlans_abstract.dart';
import 'package:kita_kerja/models/Plans/response/listPlansResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListPlansRepoImpl implements ListPlansRepo{
  final NetworkInfo list;
  final ListPlansSource plans;

  ListPlansRepoImpl({required Ref ref})
      : plans = ref.read(listPlansSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListPlansResponse>> listPlans() async {
    ServiceRunner<Failure, ListPlansResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: plans.listPlans(), errorTitle: "No Plans Listed");
  }
}