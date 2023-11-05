import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Terminal/response/list_terminals_response.dart';

class ListTerminalsState {}

class ListTerminalsInitial extends ListTerminalsState {}

class ListTerminalsLoading extends ListTerminalsState {}

class ListTerminalsFailure extends ListTerminalsState {
  final Failure failure;
  ListTerminalsFailure({required this.failure});
}

class ListTerminalsSuccess extends ListTerminalsState {
  final ListTerminalsResponse responseData;
  ListTerminalsSuccess({required this.responseData});
}
