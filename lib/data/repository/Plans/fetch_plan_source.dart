import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Plans/fetch_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/fetchPlan_abstract.dart';
import 'package:kita_kerja/models/Plans/response/fetchPlanResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class FetchPlanRepoImpl implements FetchPlanRepo{
  final NetworkInfo fetch;
  final FetchPlanSource plan;

  FetchPlanRepoImpl({required Ref ref})
      : plan = ref.read(fetchPlanSourceProvider),
        fetch = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, FetchPlanResponse>> fetchPlan() async {
    ServiceRunner<Failure, FetchPlanResponse> sR = ServiceRunner(fetch);

    return sR.tryRemoteandCatch(
        call: plan.fetchPlan(), errorTitle: "No Plan Fetched");
  }
}