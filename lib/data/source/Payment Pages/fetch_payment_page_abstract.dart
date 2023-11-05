import 'package:kita_kerja/models/Payment%20Pages/response/fetch_payment_page_response.dart';

abstract class FetchPaymentPageSource {
  Future<FetchPaymentPageResponse> fetchPaymentPage();
}