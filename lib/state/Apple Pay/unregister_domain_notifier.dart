import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_abstract.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregister_domain.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Apple%20Pay/unregister_domain_state.dart';

class UnregisterDomainStateNotifier extends StateNotifier<UnregisterDomainState> {
  final  UnregisterDomainRepo _unregisterDomainRepository;

  UnregisterDomainStateNotifier(Ref ref)
      : _unregisterDomainRepository = ref.read(unregisterDomainRepositoryProvider),
        super(UnregisterDomainInitial());

  Future<void> unregisterDomain({
    required UnregisterDomain payload,
  }) async {
    state = UnregisterDomainLoading();

    final userTransactionListOrError =
        await _unregisterDomainRepository.unregisterDomain(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => UnregisterDomainFailure(failure:l,),
      (r) => UnregisterDomainSuccess(responseData:r),
    );

    if (state is UnregisterDomainFailure) {
      final failureState = state as UnregisterDomainFailure;

    } else if (state is UnregisterDomainSuccess) {

    }
  }
}

