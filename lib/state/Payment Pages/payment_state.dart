import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/create_payment_page_response.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetch_payment_page_response.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/list_payment_pages_response.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/update_payment_page_response.dart';

// Create Payment Page
class CreatePaymentPageState {}

class CreatePaymentPageInitial extends CreatePaymentPageState {}

class CreatePaymentPageLoading extends CreatePaymentPageState {}

class CreatePaymentPageFailure extends CreatePaymentPageState {
  final Failure failure;
  CreatePaymentPageFailure({required this.failure});
}

class CreatePaymentPageSuccess extends CreatePaymentPageState {
  final CreatePaymentPageResponse responseData;
  CreatePaymentPageSuccess({required this.responseData});
}

// Fetch Payment Page
class FetchPaymentPageState {}

class FetchPaymentPageInitial extends FetchPaymentPageState {}

class FetchPaymentPageLoading extends FetchPaymentPageState {}

class FetchPaymentPageFailure extends FetchPaymentPageState {
  final Failure failure;
  FetchPaymentPageFailure({required this.failure});
}

class FetchPaymentPageSuccess extends FetchPaymentPageState {
  final FetchPaymentPageResponse responseData;
  FetchPaymentPageSuccess({required this.responseData});
}

// List Payment Pages
class ListPaymentPagesState {}

class ListPaymentPagesInitial extends ListPaymentPagesState {}

class ListPaymentPagesLoading extends ListPaymentPagesState {}

class ListPaymentPagesFailure extends ListPaymentPagesState {
  final Failure failure;
  ListPaymentPagesFailure({required this.failure});
}

class ListPaymentPagesSuccess extends ListPaymentPagesState {
  final ListPaymentPagesResponse responseData;
  ListPaymentPagesSuccess({required this.responseData});
}

// Update Payment Page
class UpdatePaymentPageState {}

class UpdatePaymentPageInitial extends UpdatePaymentPageState {}

class UpdatePaymentPageLoading extends UpdatePaymentPageState {}

class UpdatePaymentPageFailure extends UpdatePaymentPageState {
  final Failure failure;
  UpdatePaymentPageFailure({required this.failure});
}

class UpdatePaymentPageSuccess extends UpdatePaymentPageState {
  final UpdatePaymentPageResponse responseData;
  UpdatePaymentPageSuccess({required this.responseData});
}
