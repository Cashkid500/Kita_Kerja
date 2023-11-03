import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Payment%20Pages/check_slug_availability_notifier.dart';
import 'package:kita_kerja/state/Payment%20Pages/check_slug_availability_state.dart';

final checkSlugAvailabiltyStateNotifierProvider =
    StateNotifierProvider<CheckSlugAvailabilityStateNotifier, CheckSlugAvailabilityState>(
  (ref) => CheckSlugAvailabilityStateNotifier(ref),
);