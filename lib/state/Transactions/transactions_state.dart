import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transactions/response/export_transaction_response.dart';
import 'package:kita_kerja/models/Transactions/response/fetch_transaction_response.dart';
import 'package:kita_kerja/models/Transactions/response/initialize_transaction_response.dart';
import 'package:kita_kerja/models/Transactions/response/list_transaction_response.dart';
import 'package:kita_kerja/models/Transactions/response/transactions_total_response.dart';
import 'package:kita_kerja/models/Transactions/response/verify_transaction_response.dart';
import 'package:kita_kerja/models/Transactions/response/view_transaction_timeline_response.dart';

// Export Transaction
class ExportTransactionState {}

class ExportTransactionInitial extends ExportTransactionState {}

class ExportTransactionLoading extends ExportTransactionState {}

class ExportTransactionFailure extends ExportTransactionState {
  final Failure failure;
  ExportTransactionFailure({required this.failure});
}

class ExportTransactionSuccess extends ExportTransactionState {
  final ExportTransactionResponse responseData;
  ExportTransactionSuccess({required this.responseData});
}

// Fetch Transaction
class FetchTransactionState {}

class FetchTransactionInitial extends FetchTransactionState {}

class FetchTransactionLoading extends FetchTransactionState {}

class FetchTransactionFailure extends FetchTransactionState {
  final Failure failure;
  FetchTransactionFailure({required this.failure});
}

class FetchTransactionSuccess extends FetchTransactionState {
  final FetchTransactionResponse responseData;
  FetchTransactionSuccess({required this.responseData});
}

// Initialize Transaction
class InitializeTransactionState {}

class InitializeTransactionInitial extends InitializeTransactionState {}

class InitializeTransactionLoading extends InitializeTransactionState {}

class InitializeTransactionFailure extends InitializeTransactionState {
  final Failure failure;
  InitializeTransactionFailure({required this.failure});
}

class InitializeTransactionSuccess extends InitializeTransactionState {
  final InitializeTransactionResponse responseData;
  InitializeTransactionSuccess({required this.responseData});
}

// List Transaction
class ListTransactionState {}

class ListTransactionInitial extends ListTransactionState {}

class ListTransactionLoading extends ListTransactionState {}

class ListTransactionFailure extends ListTransactionState {
  final Failure failure;
  ListTransactionFailure({required this.failure});
}

class ListTransactionSuccess extends ListTransactionState {
  final ListTransactionResponse responseData;
  ListTransactionSuccess({required this.responseData});
}

// Transactions Total
class TransactionsTotalState {}

class TransactionsTotalInitial extends TransactionsTotalState {}

class TransactionsTotalLoading extends TransactionsTotalState {}

class TransactionsTotalFailure extends TransactionsTotalState {
  final Failure failure;
  TransactionsTotalFailure({required this.failure});
}

class TransactionsTotalSuccess extends TransactionsTotalState {
  final TransactionsTotalResponse responseData;
  TransactionsTotalSuccess({required this.responseData});
}

// Verify Transaction
class VerifyTransactionState {}

class VerifyTransactionInitial extends VerifyTransactionState {}

class VerifyTransactionLoading extends VerifyTransactionState {}

class VerifyTransactionFailure extends VerifyTransactionState {
  final Failure failure;
  VerifyTransactionFailure({required this.failure});
}

class VerifyTransactionSuccess extends VerifyTransactionState {
  final VerifyTransactionResponse responseData;
  VerifyTransactionSuccess({required this.responseData});
}

// View Transaction Timeline
class ViewTransactionTimelineState {}

class ViewTransactionTimelineInitial extends ViewTransactionTimelineState {}

class ViewTransactionTimelineLoading extends ViewTransactionTimelineState {}

class ViewTransactionTimelineFailure extends ViewTransactionTimelineState {
  final Failure failure;
  ViewTransactionTimelineFailure({required this.failure});
}

class ViewTransactionTimelineSuccess extends ViewTransactionTimelineState {
  final ViewTransactionTimelineResponse responseData;
  ViewTransactionTimelineSuccess({required this.responseData});
}
