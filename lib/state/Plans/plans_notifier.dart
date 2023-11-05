import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Plans/create_plan_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/fetch_plan_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/list_plans_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/update_plan_abstract.dart';
import 'package:kita_kerja/models/Plans/body/create_plan.dart';
import 'package:kita_kerja/models/Plans/body/update_plan.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Plans/plans_state.dart';

// Create Plan
class CreatePlanStateNotifier
    extends StateNotifier<CreatePlanState> {
  final CreatePlanRepo _createPlanRepository;

  CreatePlanStateNotifier(Ref ref)
      : _createPlanRepository =
            ref.read(createPlanRepositoryProvider),
        super(CreatePlanInitial());

  Future<void> createPlan({
    required CreatePlan payload,
  }) async {
    state = CreatePlanLoading();

    final userTransactionListOrError =
        await _createPlanRepository.createPlan(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => CreatePlanFailure(
        failure: l,
      ),
      (r) => CreatePlanSuccess(responseData: r),
    );

    if (state is CreatePlanFailure) {
      final failureState = state as CreatePlanFailure;
    } else if (state is CreatePlanSuccess) {}
  }
}

// Fetch Plan
class FetchPlanStateNotifier
    extends StateNotifier<FetchPlanState> {
  final FetchPlanRepo _fetchPlanRepository;

  FetchPlanStateNotifier(Ref ref)
      : _fetchPlanRepository =
            ref.read(fetchPlanRepositoryProvider),
        super(FetchPlanInitial());

  Future<void> fetchPlan() async {
    state = FetchPlanLoading();

    final userTransactionListOrError =
        await _fetchPlanRepository.fetchPlan();

    state = userTransactionListOrError.fold(
      (l) => FetchPlanFailure(
        failure: l,
      ),
      (r) => FetchPlanSuccess(responseData: r),
    );

    if (state is FetchPlanFailure) {
      final failureState = state as FetchPlanFailure;
    } else if (state is FetchPlanSuccess) {}
  }
}

// List Plans
class ListPlansStateNotifier
    extends StateNotifier<ListPlansState> {
  final ListPlansRepo _listPlansRepository;

  ListPlansStateNotifier(Ref ref)
      : _listPlansRepository =
            ref.read(listPlansRepositoryProvider),
        super(ListPlansInitial());

  Future<void> listPlans() async {
    state = ListPlansLoading();

    final userTransactionListOrError =
        await _listPlansRepository.listPlans();

    state = userTransactionListOrError.fold(
      (l) => ListPlansFailure(
        failure: l,
      ),
      (r) => ListPlansSuccess(responseData: r),
    );

    if (state is ListPlansFailure) {
      final failureState = state as ListPlansFailure;
    } else if (state is ListPlansSuccess) {}
  }
}

// Update Plan
class UpdatePlanStateNotifier
    extends StateNotifier<UpdatePlanState> {
  final UpdatePlanRepo _updatePlanRepository;

  UpdatePlanStateNotifier(Ref ref)
      : _updatePlanRepository =
            ref.read(updatePlanRepositoryProvider),
        super(UpdatePlanInitial());

  Future<void> updatePlan({
    required UpdatePlan payload,
  }) async {
    state = UpdatePlanLoading();

    final userTransactionListOrError =
        await _updatePlanRepository.updatePlan(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => UpdatePlanFailure(
        failure: l,
      ),
      (r) => UpdatePlanSuccess(responseData: r),
    );

    if (state is UpdatePlanFailure) {
      final failureState = state as UpdatePlanFailure;
    } else if (state is UpdatePlanSuccess) {}
  }
}
