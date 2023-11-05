import 'package:kita_kerja/models/Plans/body/create_plan.dart';
import 'package:kita_kerja/models/Plans/response/create_plan_response.dart';

abstract class CreatePlanSource {
  Future<CreatePlanResponse> createPlan({
    required CreatePlan payload,
  });
}