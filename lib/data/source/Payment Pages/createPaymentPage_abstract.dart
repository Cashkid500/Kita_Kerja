import 'package:kita_kerja/models/Payment%20Pages/body/createPaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/createPaymentPageResponse.dart';

abstract class CreatePaymentPageSource {
  Future<CreatePaymentPageResponse> createPaymentPage({
    required CreatePaymentPages payload,
  });
}