import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/createPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/createPaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/createPaymentPageResponse.dart';

class CreatePaymentPageSourceImpl implements CreatePaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CreatePaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<CreatePaymentPageResponse> createPaymentPage({required CreatePaymentPages payload}) {
    // TODO: implement createPaymentPage
    throw UnimplementedError();
  }

  
  
}