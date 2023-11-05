import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Transaction%20Split/list_splits_abstract.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Transaction%20Split/list_splits_state.dart';

class ListSplitsStateNotifier extends StateNotifier<ListSplitsState> {
  final ListSplitsRepo _listSplitsRepository;

  ListSplitsStateNotifier(Ref ref)
      : _listSplitsRepository = ref.read(listSplitsRepositoryProvider),
        super(ListSplitsInitial());

  Future<void> listSplits() async {
    state = ListSplitsLoading();

    final userTransactionListOrError =
        await _listSplitsRepository.listSplits();

    state = userTransactionListOrError.fold(
      (l) => ListSplitsFailure(
        failure: l,
      ),
      (r) => ListSplitsSuccess(responseData: r),
    );

    if (state is ListSplitsFailure) {
      final failureState = state as ListSplitsFailure;
    } else if (state is ListSplitsSuccess) {}
  }
}
