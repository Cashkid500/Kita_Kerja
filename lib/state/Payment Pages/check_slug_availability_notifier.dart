import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Payment%20Pages/check_slug_availability_state.dart';

class CheckSlugAvailabilityStateNotifier extends StateNotifier< CheckSlugAvailabilityState> {
  final CheckSlugAvailabilityRepo _checkSlugAvailaibilityRepository;

  CheckSlugAvailabilityStateNotifier(Ref ref)
      : _checkSlugAvailaibilityRepository = ref.read(checkSlugAvailabilityRepositoryProvider),
        super(CheckSlugAvailabilityInitial());

  Future<void> checkSlugAvailability() async {
    state = CheckSlugAvailabilityLoading();

    final userTransactionListOrError =
        await _checkSlugAvailaibilityRepository.checkSlugAvailability();

    state = userTransactionListOrError.fold(
      (l) => CheckSlugAvailabilityFailure(failure:l,),
      (r) => CheckSlugAvailabilitySuccess(responseData:r),
    );

    if (state is CheckSlugAvailabilityFailure) {
      final failureState = state as CheckSlugAvailabilityFailure;

    } else if (state is CheckSlugAvailabilitySuccess) {

    }
  }
}