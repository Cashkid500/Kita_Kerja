import 'package:kita_kerja/models/Payment%20Pages/body/updatePaymentPage.dart';
import 'package:kita_kerja/models/Payment%20Pages/response/updatePaymentPageResponse.dart';

abstract class UpdatePaymentPageSource {
  Future<UpdatePaymentPageResponse> updatePaymentPage({
    required UpdatePaymentPages payload,
  });
}