import 'package:kita_kerja/models/Plans/response/listPlansResponse.dart';

abstract class ListPlansSource {
  Future<ListPlansResponse> listPlans();
}