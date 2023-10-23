import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_abstract.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregisterDomain_abstract.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregisterDomain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregisterDomainResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class UnregisterDomainRepoImpl implements UnregisterDomainRepo {
  final NetworkInfo domain;
  final UnregisterDomainSource unregister;

  UnregisterDomainRepoImpl({required Ref ref})
      : unregister = ref.read(unregisterDomainSourceProvider),
        domain = ref.read(networkInfoProvider);

  @override
        Future<Either<Failure, UnregisterDomainResponse>> unregisterDomain({
      required UnregisterDomain payload,
  })async{
    ServiceRunner<Failure, UnregisterDomainResponse> sR = ServiceRunner(domain);

    return sR.tryRemoteandCatch(
      call: unregister.unregisterDomain(payload: payload),
      errorTitle: "Error Registering Domain,"
    );
  }
}