import 'package:kita_kerja/models/Plans/body/update_plan.dart';
import 'package:kita_kerja/models/Plans/response/update_plan_response.dart';

abstract class UpdatePlanSource {
  Future<UpdatePlanResponse> updatePlan({
    required UpdatePlan payload,
  });
}