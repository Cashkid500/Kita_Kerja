import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/listPaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/listPaymentPagesResponse.dart';

class ListPaymentPageSourceImpl implements ListPaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListPaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<ListPaymentPagesResponse> listPaymentPages() {
    // TODO: implement listPaymentPages
    throw UnimplementedError();
  }
  
}