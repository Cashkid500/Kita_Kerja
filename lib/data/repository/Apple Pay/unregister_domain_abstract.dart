import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregisterDomain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregisterDomainResponse.dart';

abstract class UnregisterDomainRepo {
  Future<Either<Failure, UnregisterDomainResponse>> unregisterDomain ({
    required UnregisterDomain payload,
  });
}