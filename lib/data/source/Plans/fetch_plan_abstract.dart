import 'package:kita_kerja/models/Plans/response/fetch_plan_response.dart';

abstract class FetchPlanSource {
  Future<FetchPlanResponse> fetchPlan();
}