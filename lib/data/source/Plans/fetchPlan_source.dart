import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/fetchPlan_abstract.dart';
import 'package:kita_kerja/models/Plans/response/fetchPlanResponse.dart';

class FetchPlanSourceImpl implements FetchPlanSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchPlanSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<FetchPlanResponse> fetchPlan() {
    // TODO: implement fetchPlan
    throw UnimplementedError();
  }

  
}