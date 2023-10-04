import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetchPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/fetchPaymentPageResponse.dart';

class FetchPaymentPageSourceImpl implements FetchPaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchPaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<FetchPaymentPageResponse> fetchPaymentPage() {
    // TODO: implement fetchPaymentPage
    throw UnimplementedError();
  }

  
  
}