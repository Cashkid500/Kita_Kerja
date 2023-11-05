import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/list_payment_pages_response.dart';

abstract class ListPaymentPagesRepo {
  Future<Either<Failure, ListPaymentPagesResponse>> listPaymentPages ();
}