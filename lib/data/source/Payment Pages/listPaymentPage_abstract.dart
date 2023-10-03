import 'package:kita_kerja/models/Payment%20Pages/response/listPaymentPagesResponse.dart';

abstract class ListPaymentPageSource {
  Future<ListPaymentPagesResponse> listPaymentPages();
}