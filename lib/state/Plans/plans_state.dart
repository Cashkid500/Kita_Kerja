import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Plans/response/create_plan_response.dart';
import 'package:kita_kerja/models/Plans/response/fetch_plan_response.dart';
import 'package:kita_kerja/models/Plans/response/list_plans_response.dart';
import 'package:kita_kerja/models/Plans/response/update_plan_response.dart';

// Create Plan
class CreatePlanState {}

class CreatePlanInitial extends CreatePlanState {}

class CreatePlanLoading extends CreatePlanState {}

class CreatePlanFailure extends CreatePlanState {
  final Failure failure;
  CreatePlanFailure({required this.failure});
}

class CreatePlanSuccess extends CreatePlanState {
  final CreatePlanResponse responseData;
  CreatePlanSuccess({required this.responseData});
}

// Fetch Plan
class FetchPlanState {}

class FetchPlanInitial extends FetchPlanState {}

class FetchPlanLoading extends FetchPlanState {}

class FetchPlanFailure extends FetchPlanState {
  final Failure failure;
  FetchPlanFailure({required this.failure});
}

class FetchPlanSuccess extends FetchPlanState {
  final FetchPlanResponse responseData;
  FetchPlanSuccess({required this.responseData});
}

// List Plans
class ListPlansState {}

class ListPlansInitial extends ListPlansState {}

class ListPlansLoading extends ListPlansState {}

class ListPlansFailure extends ListPlansState {
  final Failure failure;
  ListPlansFailure({required this.failure});
}

class ListPlansSuccess extends ListPlansState {
  final ListPlansResponse responseData;
  ListPlansSuccess({required this.responseData});
}

// Update Plan
class UpdatePlanState {}

class UpdatePlanInitial extends UpdatePlanState {}

class UpdatePlanLoading extends UpdatePlanState {}

class UpdatePlanFailure extends UpdatePlanState {
  final Failure failure;
  UpdatePlanFailure({required this.failure});
}

class UpdatePlanSuccess extends UpdatePlanState {
  final UpdatePlanResponse responseData;
  UpdatePlanSuccess({required this.responseData});
}
