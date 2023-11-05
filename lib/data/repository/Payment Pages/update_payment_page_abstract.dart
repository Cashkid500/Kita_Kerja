import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/update_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/update_payment_page_response.dart';

abstract class UpdatePaymentPageRepo {
  Future<Either<Failure, UpdatePaymentPageResponse>> updatePaymentPage ({
    required UpdatePaymentPages payload,
  });
}