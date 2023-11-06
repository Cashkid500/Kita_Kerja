import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/fetch_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/initialize_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/list_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/view_transaction_timeline_abstract.dart';
import 'package:kita_kerja/models/Transactions/body/initialize_transaction.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Transactions/transactions_state.dart';

// Export Transaction
class ExportTransactionStateNotifier extends StateNotifier<ExportTransactionState> {
  final ExportTransactionRepo _exportTransactionRepository;
  
  ExportTransactionStateNotifier(Ref ref)
      : _exportTransactionRepository = ref.read(exportTransactionRepositoryProvider),
        super(ExportTransactionInitial());

  Future<void> exportTransaction() async {
    state = ExportTransactionLoading();

    final userTransactionListOrError =
        await _exportTransactionRepository.exportTransaction();

    state = userTransactionListOrError.fold(
      (l) => ExportTransactionFailure(
        failure: l,
      ),
      (r) => ExportTransactionSuccess(responseData: r),
    );

    if (state is ExportTransactionFailure) {
      final failureState = state as ExportTransactionFailure;
    } else if (state is ExportTransactionSuccess) {}
  }
}

// Fetch Transaction
class FetchTransactionStateNotifier extends StateNotifier<FetchTransactionState> {
  final FetchTransactionRepo _fetchTransactionRepository;

  FetchTransactionStateNotifier(Ref ref)
      : _fetchTransactionRepository = ref.read(fetchTransactionRepositoryProvider),
        super(FetchTransactionInitial());

  Future<void> fetchTransaction() async {
    state = FetchTransactionLoading();

    final userTransactionListOrError =
        await _fetchTransactionRepository.fetchTransaction();

    state = userTransactionListOrError.fold(
      (l) => FetchTransactionFailure(
        failure: l,
      ),
      (r) => FetchTransactionSuccess(responseData: r),
    );

    if (state is FetchTransactionFailure) {
      final failureState = state as FetchTransactionFailure;
    } else if (state is FetchTransactionSuccess) {}
  }
}

// Initialize Transaction
class InitializeTransactionStateNotifier extends StateNotifier<InitializeTransactionState> {
  final InitializeTransactionRepo _initializeTransactionRepository;

  InitializeTransactionStateNotifier(Ref ref)
      : _initializeTransactionRepository = ref.read(initializeTransactionRepositoryProvider),
        super(InitializeTransactionInitial());

  Future<void> initializeTransaction({
    required InitializeTransaction payload,
  }) async {
    state = InitializeTransactionLoading();

    final userTransactionListOrError =
        await _initializeTransactionRepository.initializeTransaction(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => InitializeTransactionFailure(
        failure: l,
      ),
      (r) => InitializeTransactionSuccess(responseData: r),
    );

    if (state is InitializeTransactionFailure) {
      final failureState = state as InitializeTransactionFailure;
    } else if (state is InitializeTransactionSuccess) {}
  }
}


// List Transaction
class ListTransactionStateNotifier extends StateNotifier<ListTransactionState> {
  final ListTransactionRepo _listTransactionRepository;

  ListTransactionStateNotifier(Ref ref)
      : _listTransactionRepository = ref.read(listTransactionRepositoryProvider),
        super(ListTransactionInitial());

  Future<void> listTransaction() async {
    state = ListTransactionLoading();

    final userTransactionListOrError =
        await _listTransactionRepository.listTransaction();

    state = userTransactionListOrError.fold(
      (l) => ListTransactionFailure(
        failure: l,
      ),
      (r) => ListTransactionSuccess(responseData: r),
    );

    if (state is ListTransactionFailure) {
      final failureState = state as ListTransactionFailure;
    } else if (state is ListTransactionSuccess) {}
  }
}

// Transactions Total
class TransactionsTotalStateNotifier extends StateNotifier<TransactionsTotalState> {
  final TransactionsTotalRepo _transactionsTotalRepository;

  TransactionsTotalStateNotifier(Ref ref)
      : _transactionsTotalRepository =
            ref.read(transactionsTotalRepositoryProvider),
        super(TransactionsTotalInitial());

  Future<void> transactionsTotal() async {
    state = TransactionsTotalLoading();

    final userTransactionListOrError =
        await _transactionsTotalRepository.transactionsTotal();

    state = userTransactionListOrError.fold(
      (l) => TransactionsTotalFailure(
        failure: l,
      ),
      (r) => TransactionsTotalSuccess(responseData: r),
    );

    if (state is TransactionsTotalFailure) {
      final failureState = state as TransactionsTotalFailure;
    } else if (state is TransactionsTotalSuccess) {}
  }
}

// Verify Transaction
class VerifyTransactionStateNotifier extends StateNotifier<VerifyTransactionState> {
  final VerifyTransactionRepo _verifyTransactionRepository;

  VerifyTransactionStateNotifier(Ref ref)
      : _verifyTransactionRepository =
            ref.read(verifyTransactionRepositoryProvider),
        super(VerifyTransactionInitial());

  Future<void> verifyTransaction() async {
    state = VerifyTransactionLoading();

    final userTransactionListOrError =
        await _verifyTransactionRepository.verifyTransaction();

    state = userTransactionListOrError.fold(
      (l) => VerifyTransactionFailure(
        failure: l,
      ),
      (r) => VerifyTransactionSuccess(responseData: r),
    );

    if (state is VerifyTransactionFailure) {
      final failureState = state as VerifyTransactionFailure;
    } else if (state is VerifyTransactionSuccess) {}
  }
}

// View Transaction Timeline
class ViewTransactionTimelineStateNotifier extends StateNotifier<ViewTransactionTimelineState> {
  final ViewTransactionTimelineRepo _viewTransactionTimelineRepository;

  ViewTransactionTimelineStateNotifier(Ref ref)
      : _viewTransactionTimelineRepository =
            ref.read(viewTransactionTimelineRepositoryProvider),
        super(ViewTransactionTimelineInitial());

  Future<void> viewTransactionTimeline() async {
    state = ViewTransactionTimelineLoading();

    final userTransactionListOrError =
        await _viewTransactionTimelineRepository.viewTransactionTimeline();

    state = userTransactionListOrError.fold(
      (l) => ViewTransactionTimelineFailure(
        failure: l,
      ),
      (r) => ViewTransactionTimelineSuccess(responseData: r),
    );

    if (state is ViewTransactionTimelineFailure) {
      final failureState = state as ViewTransactionTimelineFailure;
    } else if (state is ViewTransactionTimelineSuccess) {}
  }
}
