import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/create_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/create_payment_page_response.dart';

abstract class CreatePaymentPageRepo {
  Future<Either<Failure, CreatePaymentPageResponse>> createPaymentPage ({
    required CreatePaymentPages payload,
  });
}