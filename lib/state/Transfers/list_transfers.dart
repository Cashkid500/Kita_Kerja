import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transfers/response/list_transfers_response.dart';

class ListTransfersState {}

class ListTransfersInitial extends ListTransfersState {}

class ListTransfersLoading extends ListTransfersState {}

class ListTransfersFailure extends ListTransfersState {
  final Failure failure;
  ListTransfersFailure({required this.failure});
}

class ListTransfersSuccess extends ListTransfersState {
  final ListTransfersResponse responseData;
  ListTransfersSuccess({required this.responseData});
}
