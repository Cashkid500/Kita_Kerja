import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/update_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/update_payment_page_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/update_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/update_payment_page_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class UpdatePaymentPageRepoImpl implements UpdatePaymentPageRepo{
  final NetworkInfo update;
  final UpdatePaymentPageSource payment;

  UpdatePaymentPageRepoImpl({required Ref ref})
      : payment = ref.read(updatePaymentSourceProvider),
        update = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, UpdatePaymentPageResponse>> updatePaymentPage ({
    required UpdatePaymentPages payload,
  })async{
    ServiceRunner<Failure, UpdatePaymentPageResponse> sR = ServiceRunner(update);

    return sR.tryRemoteandCatch(
      call: payment.updatePaymentPage(payload: payload),
      errorTitle: "No Payment Page Updated"
    );
  }
}