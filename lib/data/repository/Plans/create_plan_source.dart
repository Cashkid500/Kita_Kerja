import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Plans/create_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/createPlan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/createPlan.dart';
import 'package:kita_kerja/models/Plans/response/createPlanResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class CreatePlanRepoImpl implements CreatePlanRepo{
  final NetworkInfo create;
  final CreatePlanSource plan;

  CreatePlanRepoImpl({required Ref ref})
      : plan = ref.read(createPlanSourceProvider),
        create = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, CreatePlanResponse>> createPlan ({
    required CreatePlan payload,
  })async{
    ServiceRunner<Failure, CreatePlanResponse> sR = ServiceRunner(create);

    return sR.tryRemoteandCatch(
      call: plan.createPlan(payload: payload),
      errorTitle: "No Plan Created"
    );
  }
}