import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/updatePaymentPage_abstract.dart';
import 'package:kita_kerja/models/Payment%20Pages/body/updatePaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/updatePaymentPageResponse.dart';

class UpdatePaymentPageSourceImpl implements UpdatePaymentPageSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdatePaymentPageSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<UpdatePaymentPageResponse> updatePaymentPage({required UpdatePaymentPages payload}) {
    // TODO: implement updatePaymentPage
    throw UnimplementedError();
  }
  
}