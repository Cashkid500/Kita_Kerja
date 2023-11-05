import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/fetch_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/list_payment_pages_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/update_payment_page_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/create_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/update_payment_page.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Payment%20Pages/payment_state.dart';

// Create Payment Page
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

// Fetch Payment Page
class FetchPaymentPageStateNotifier
    extends StateNotifier<FetchPaymentPageState> {
  final FetchPaymentPageRepo _fetchPaymentPageRepository;

  FetchPaymentPageStateNotifier(Ref ref)
      : _fetchPaymentPageRepository =
            ref.read(fetchPaymentPageRepositoryProvider),
        super(FetchPaymentPageInitial());

  Future<void> fetchPaymentPage() async {
    state = FetchPaymentPageLoading();

    final userTransactionListOrError =
        await _fetchPaymentPageRepository.fetchPaymentPage();

    state = userTransactionListOrError.fold(
      (l) => FetchPaymentPageFailure(
        failure: l,
      ),
      (r) => FetchPaymentPageSuccess(responseData: r),
    );

    if (state is FetchPaymentPageFailure) {
      final failureState = state as FetchPaymentPageFailure;
    } else if (state is FetchPaymentPageSuccess) {}
  }
}

// List Payment Pages
class ListPaymentPagesStateNotifier
    extends StateNotifier<ListPaymentPagesState> {
  final ListPaymentPagesRepo _listPaymentPagesRepository;

  ListPaymentPagesStateNotifier(Ref ref)
      : _listPaymentPagesRepository =
            ref.read(listPaymentPagesRepositoryProvider),
        super(ListPaymentPagesInitial());

  Future<void> listPaymentPages() async {
    state = ListPaymentPagesLoading();

    final userTransactionListOrError =
        await _listPaymentPagesRepository.listPaymentPages();

    state = userTransactionListOrError.fold(
      (l) => ListPaymentPagesFailure(
        failure: l,
      ),
      (r) => ListPaymentPagesSuccess(responseData: r),
    );

    if (state is ListPaymentPagesFailure) {
      final failureState = state as ListPaymentPagesFailure;
    } else if (state is ListPaymentPagesSuccess) {}
  }
}

// Update Payment Page
class UpdatePaymentPageStateNotifier
    extends StateNotifier<UpdatePaymentPageState> {
  final UpdatePaymentPageRepo _updatePaymentPageRepository;

  UpdatePaymentPageStateNotifier(Ref ref)
      : _updatePaymentPageRepository =
            ref.read(updatePaymentPageRepositoryProvider),
        super(UpdatePaymentPageInitial());

  Future<void> updatePaymentPage({
    required UpdatePaymentPages payload,
  }) async {
    state = UpdatePaymentPageLoading();

    final userTransactionListOrError =
        await _updatePaymentPageRepository.updatePaymentPage(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => UpdatePaymentPageFailure(
        failure: l,
      ),
      (r) => UpdatePaymentPageSuccess(responseData: r),
    );

    if (state is UpdatePaymentPageFailure) {
      final failureState = state as UpdatePaymentPageFailure;
    } else if (state is UpdatePaymentPageSuccess) {}
  }
}
