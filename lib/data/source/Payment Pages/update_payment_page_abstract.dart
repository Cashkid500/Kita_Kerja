import 'package:kita_kerja/models/Payment%20Pages/body/update_payment_page.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/update_payment_page_response.dart';

abstract class UpdatePaymentPageSource {
  Future<UpdatePaymentPageResponse> updatePaymentPage({
    required UpdatePaymentPage payload,
  });
}