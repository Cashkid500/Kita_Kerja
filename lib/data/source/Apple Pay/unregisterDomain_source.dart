import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregisterDomain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregisterDomainResponse.dart';

import 'UnregisterDomain_abstract.dart';

class UnregisterDomainSourceImpl implements UnregisterDomainSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UnregisterDomainSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<UnregisterDomainResponse> unregisterDomain({required UnregisterDomain payload}) {
    // TODO: implement unregisterDomain
    throw UnimplementedError();
  }
  
}
