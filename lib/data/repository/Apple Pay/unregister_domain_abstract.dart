import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregister_domain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregister_domain_response.dart';

abstract class UnregisterDomainRepo {
  Future<Either<Failure, UnregisterDomainResponse>> unregisterDomain ({
    required UnregisterDomain payload,
  });
}