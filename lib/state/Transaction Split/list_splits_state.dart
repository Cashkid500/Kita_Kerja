import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Transaction%20Split/response/list_splits_response.dart';

class ListSplitsState {}

class ListSplitsInitial extends ListSplitsState {}

class ListSplitsLoading extends ListSplitsState {}

class ListSplitsFailure extends ListSplitsState {
  final Failure failure;
  ListSplitsFailure({required this.failure});
}

class ListSplitsSuccess extends ListSplitsState {
  final ListSplitsResponse responseData;
  ListSplitsSuccess({required this.responseData});
}
