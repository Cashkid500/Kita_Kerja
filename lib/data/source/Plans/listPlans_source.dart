import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Plans/listPlans_abstract.dart';
import 'package:kita_kerja/models/Plans/response/listPlansResponse.dart';

class ListPlansSourceImpl implements ListPlansSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListPlansSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<ListPlansResponse> listPlans() {
    // TODO: implement listPlans
    throw UnimplementedError();
  }

  
}