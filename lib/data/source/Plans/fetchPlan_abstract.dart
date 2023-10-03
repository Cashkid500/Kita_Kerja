import 'package:kita_kerja/models/Plans/response/fetchPlanResponse.dart';

abstract class FetchPlanSource {
  Future<FetchPlanResponse> fetchPlan();
}