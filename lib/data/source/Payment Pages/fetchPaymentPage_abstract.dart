import 'package:kita_kerja/models/Payment%20Pages/response/fetchPaymentPageResponse.dart';

abstract class FetchPaymentPageSource {
  Future<FetchPaymentPageResponse> fetchPaymentPage();
}