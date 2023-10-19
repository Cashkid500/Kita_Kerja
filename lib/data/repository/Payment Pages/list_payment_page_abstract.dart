import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/listPaymentPagesResponse.dart';

abstract class ListPaymentPageRepo {
  Future<Either<Failure, ListPaymentPagesResponse>> listPaymentPages ();
}