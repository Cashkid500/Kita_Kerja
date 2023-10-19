import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetchPaymentPageResponse.dart';

abstract class FetchPaymentPageRepo {
  Future<Either<Failure, FetchPaymentPageResponse>> fetchPaymentPage ();
}