import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/create_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/create_payment_page_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class CreatePaymentPageRepoImpl implements CreatePaymentPageRepo{
  final NetworkInfo create;
  final CreatePaymentPageSource payment;

  CreatePaymentPageRepoImpl({required Ref ref})
      : payment = ref.read(createPaymentSourceProvider),
        create = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, CreatePaymentPageResponse>> createPaymentPage ({
    required CreatePaymentPages payload,
  })async{
    ServiceRunner<Failure, CreatePaymentPageResponse> sR = ServiceRunner(create);

    return sR.tryRemoteandCatch(
      call: payment.createPaymentPage(payload: payload),
      errorTitle: "No Payment Page Created"
    );
  }
}