import 'package:kita_kerja/models/Apple%20Pay/body/unregister_domain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregister_domain_response.dart';

abstract class UnregisterDomainSource {
  Future<UnregisterDomainResponse> unregisterDomain({
    required UnregisterDomain payload,
  });
  
}