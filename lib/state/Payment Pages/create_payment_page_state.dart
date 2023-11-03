import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/createPaymentPageResponse.dart';

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