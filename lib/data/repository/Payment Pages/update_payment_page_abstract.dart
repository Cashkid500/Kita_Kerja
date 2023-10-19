import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/updatePaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/updatePaymentPageResponse.dart';

abstract class UpdatePaymentPageRepo {
  Future<Either<Failure, UpdatePaymentPageResponse>> updatePaymentPage ({
    required UpdatePaymentPages payload,
  });
}