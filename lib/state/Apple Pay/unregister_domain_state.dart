import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregister_domain_response.dart';

class UnregisterDomainState {}

class UnregisterDomainInitial extends UnregisterDomainState {}

class UnregisterDomainLoading extends UnregisterDomainState {}

class UnregisterDomainFailure extends UnregisterDomainState {
    final Failure failure;
    UnregisterDomainFailure({required this.failure});
}

class UnregisterDomainSuccess extends UnregisterDomainState {
    final UnregisterDomainResponse responseData;
    UnregisterDomainSuccess({required this.responseData});
}

