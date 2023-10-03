import 'package:kita_kerja/models/Plans/body/updatePlan.dart';
import 'package:kita_kerja/models/Plans/response/updatePlanResponse.dart';

abstract class UpdatePlanSource {
  Future<UpdatePlanResponse> updatePlan({
    required UpdatePlan payload,
  });
}