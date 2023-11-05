import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Plans/update_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/update_plan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/update_plan.dart';
import 'package:kita_kerja/models/Plans/response/update_plan_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class UpdatePlanRepoImpl implements UpdatePlanRepo{
  final NetworkInfo update;
  final UpdatePlanSource plan;

  UpdatePlanRepoImpl({required Ref ref})
      : plan = ref.read(updatePlanSourceProvider),
        update = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, UpdatePlanResponse>> updatePlan ({
    required UpdatePlan payload,
  })async{
    ServiceRunner<Failure, UpdatePlanResponse> sR = ServiceRunner(update);

    return sR.tryRemoteandCatch(
      call: plan.updatePlan(payload: payload),
      errorTitle: "No Plan Updated"
    );
  }
}