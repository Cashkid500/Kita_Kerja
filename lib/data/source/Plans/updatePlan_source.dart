import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/updatePlan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/updatePlan.dart';
import 'package:kita_kerja/models/Plans/response/updatePlanResponse.dart';

class UpdatePlanSourceImpl implements UpdatePlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdatePlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<UpdatePlanResponse> updatePlan({required UpdatePlan payload}) {
    // TODO: implement updatePlan
    throw UnimplementedError();
  }

  
}