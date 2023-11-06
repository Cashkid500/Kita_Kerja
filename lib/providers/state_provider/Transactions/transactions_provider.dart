import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Transactions/transactions_notifier.dart';
import 'package:kita_kerja/state/Transactions/transactions_state.dart';

// Export Transaction
final exportTransactionStateNotifierProvider =
    StateNotifierProvider<ExportTransactionStateNotifier, ExportTransactionState>(
  (ref) => ExportTransactionStateNotifier(ref),
);

// Fetch Transaction
final fetchTransactionStateNotifierProvider =
    StateNotifierProvider<FetchTransactionStateNotifier, FetchTransactionState>(
  (ref) => FetchTransactionStateNotifier(ref),
);

// Initialize Transaction
final initializeTransactionStateNotifierProvider =
    StateNotifierProvider<InitializeTransactionStateNotifier, InitializeTransactionState>(
  (ref) => InitializeTransactionStateNotifier(ref),
);

// List Transaction
final listTransactionStateNotifierProvider = StateNotifierProvider<
    ListTransactionStateNotifier, ListTransactionState>(
  (ref) => ListTransactionStateNotifier(ref),
);

// Transactions Total
final transactionsTotalStateNotifierProvider =
    StateNotifierProvider<TransactionsTotalStateNotifier, TransactionsTotalState>(
  (ref) => TransactionsTotalStateNotifier(ref),
);

// Verify Transaction
final verifyTransactionStateNotifierProvider =
    StateNotifierProvider<VerifyTransactionStateNotifier, VerifyTransactionState>(
  (ref) => VerifyTransactionStateNotifier(ref),
);

// View Transaction Timeline
final viewTransactioTimelineStateNotifierProvider =
    StateNotifierProvider<ViewTransactionTimelineStateNotifier, ViewTransactionTimelineState>(
  (ref) => ViewTransactionTimelineStateNotifier(ref),
);
