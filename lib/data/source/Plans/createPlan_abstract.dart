import 'package:kita_kerja/models/Plans/body/createPlan.dart';
import 'package:kita_kerja/models/Plans/response/createPlanResponse.dart';

abstract class CreatePlanSource {
  Future<CreatePlanResponse> createPlan({
    required CreatePlan payload,
  });
}