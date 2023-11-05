import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Plans/plans_notifier.dart';
import 'package:kita_kerja/state/Plans/plans_state.dart';

// Create Plan
final createPlanStateNotifierProvider = StateNotifierProvider<
    CreatePlanStateNotifier, CreatePlanState>(
  (ref) => CreatePlanStateNotifier(ref),
);

// List Plans
final listPlansStateNotifierProvider =
    StateNotifierProvider<ListPlansStateNotifier, ListPlansState>(
  (ref) => ListPlansStateNotifier(ref),
);

// Fetch Plan
final fetchPlanStateNotifierProvider =
    StateNotifierProvider<FetchPlanStateNotifier, FetchPlanState>(
  (ref) => FetchPlanStateNotifier(ref),
);

// Update Plan
final updatePlanStateNotifierProvider = StateNotifierProvider<
    UpdatePlanStateNotifier, UpdatePlanState>(
  (ref) => UpdatePlanStateNotifier(ref),
);
