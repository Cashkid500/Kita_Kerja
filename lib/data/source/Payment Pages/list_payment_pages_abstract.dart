import 'package:kita_kerja/models/Payment%20Pages/response/list_payment_pages_response.dart';

abstract class ListPaymentPagesSource {
  Future<ListPaymentPagesResponse> listPaymentPages();
}