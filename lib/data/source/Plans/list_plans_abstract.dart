import 'package:kita_kerja/models/Plans/response/list_plans_response.dart';

abstract class ListPlansSource {
  Future<ListPlansResponse> listPlans();
}