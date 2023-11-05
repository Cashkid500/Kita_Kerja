import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Terminal/list_terminals_abstract.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Terminal/list_terminals_state.dart';

class ListTerminalsStateNotifier
    extends StateNotifier<ListTerminalsState> {
  final ListTerminalsRepo _listTerminalsRepository;

  ListTerminalsStateNotifier(Ref ref)
      : _listTerminalsRepository =
            ref.read(listTerminalsRepositoryProvider),
        super(ListTerminalsInitial());

  Future<void> listTerminals() async {
    state = ListTerminalsLoading();

    final userTransactionListOrError =
        await _listTerminalsRepository.listTerminals();

    state = userTransactionListOrError.fold(
      (l) => ListTerminalsFailure(
        failure: l,
      ),
      (r) => ListTerminalsSuccess(responseData: r),
    );

    if (state is ListTerminalsFailure) {
      final failureState = state as ListTerminalsFailure;
    } else if (state is ListTerminalsSuccess) {}
  }
}
