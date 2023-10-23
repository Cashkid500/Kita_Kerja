import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/list_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/listPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/listPaymentPagesResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListPaymentPageRepoImpl implements ListPaymentPageRepo{
  final NetworkInfo list;
  final ListPaymentPageSource payment;

  ListPaymentPageRepoImpl({required Ref ref})
      : payment = ref.read(listPaymentSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListPaymentPagesResponse>> listPaymentPages() async {
    ServiceRunner<Failure, ListPaymentPagesResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: payment.listPaymentPages(), errorTitle: "No Payment Page Listed");
  }
}