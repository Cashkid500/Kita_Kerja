import 'package:kita_kerja/models/Apple%20Pay/body/unregisterDomain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregisterDomainResponse.dart';

abstract class UnregisterDomainSource {
  Future<UnregisterDomainResponse> unregisterDomain({
    required UnregisterDomain payload,
  });
}