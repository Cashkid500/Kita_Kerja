import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/createPaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/createPaymentPageResponse.dart';

abstract class CreatePaymentPageRepo {
  Future<Either<Failure, CreatePaymentPageResponse>> createPaymentPage ({
    required CreatePaymentPages payload,
  });
}