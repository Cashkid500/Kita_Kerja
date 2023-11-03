import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/createPaymentPage.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Payment%20Pages/create_payment_page_state.dart';

class CreatePaymentPageStateNotifier extends StateNotifier<CreatePaymentPageState> {
  final  CreatePaymentPageRepo _createPaymentPageRepository;

  CreatePaymentPageStateNotifier(Ref ref)
      : _createPaymentPageRepository = ref.read(createPaymentPageRepositoryProvider),
        super(CreatePaymentPageInitial());

  Future<void> createPaymentPage({
    required CreatePaymentPages payload,
  }) async {
    state = CreatePaymentPageLoading();

    final userTransactionListOrError =
        await _createPaymentPageRepository.createPaymentPage(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => CreatePaymentPageFailure(failure:l,),
      (r) => CreatePaymentPageSuccess(responseData:r),
    );

    if (state is CreatePaymentPageFailure) {
      final failureState = state as CreatePaymentPageFailure;

    } else if (state is CreatePaymentPageSuccess) {

    }
  }
}