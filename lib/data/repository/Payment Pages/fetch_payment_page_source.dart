import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/fetch_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetchPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetchPaymentPageResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class FetchPaymentPageRepoImpl implements FetchPaymentPageRepo {
  final NetworkInfo fetch;
  final FetchPaymentPageSource payment;

  FetchPaymentPageRepoImpl({required Ref ref})
      : payment = ref.read(fetchPaymentSourceProvider),
        fetch = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, FetchPaymentPageResponse>> fetchPaymentPage() async {
    ServiceRunner<Failure, FetchPaymentPageResponse> sR = ServiceRunner(fetch);

    return sR.tryRemoteandCatch(
        call: payment.fetchPaymentPage(), errorTitle: "No Payment Page Fetched");
  }
}
