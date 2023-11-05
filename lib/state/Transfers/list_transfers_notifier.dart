import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Transfers/list_transfers_abstract.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Transfers/list_transfers.dart';

class ListTransfersStateNotifier extends StateNotifier<ListTransfersState> {
  final ListTransfersRepo _listTransfersRepository;

  ListTransfersStateNotifier(Ref ref)
      : _listTransfersRepository = ref.read(listTransfersRepositoryProvider),
        super(ListTransfersInitial());

  Future<void> listTransfers() async {
    state = ListTransfersLoading();

    final userTransactionListOrError = await _listTransfersRepository.listTransfers();

    state = userTransactionListOrError.fold(
      (l) => ListTransfersFailure(
        failure: l,
      ),
      (r) => ListTransfersSuccess(responseData: r),
    );

    if (state is ListTransfersFailure) {
      final failureState = state as ListTransfersFailure;
    } else if (state is ListTransfersSuccess) {}
  }
}
