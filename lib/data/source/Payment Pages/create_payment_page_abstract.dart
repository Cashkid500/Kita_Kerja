import 'package:kita_kerja/models/Payment%20Pages/body/create_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/create_payment_page_response.dart';

abstract class CreatePaymentPageSource {
  Future<CreatePaymentPageResponse> createPaymentPage({
    required CreatePaymentPages payload,
  });
}