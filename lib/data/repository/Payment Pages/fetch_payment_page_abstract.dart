import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetch_payment_page_response.dart';

abstract class FetchPaymentPageRepo {
  Future<Either<Failure, FetchPaymentPageResponse>> fetchPaymentPage ();
}