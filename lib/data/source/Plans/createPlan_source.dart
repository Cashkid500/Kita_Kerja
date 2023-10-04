import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/createPlan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/createPlan.dart';
import 'package:kita_kerja/models/Plans/response/createPlanResponse.dart';

class CreatePlanSourceImpl implements CreatePlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CreatePlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<CreatePlanResponse> createPlan({required CreatePlan payload}) {
    // TODO: implement createPlan
    throw UnimplementedError();
  }

}