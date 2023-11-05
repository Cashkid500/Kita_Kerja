import 'package:kita_kerja/models/Products/response/fetch_product_response.dart';

abstract class FetchProductSource {
  Future<FetchProductResponse> fetchProduct();
}