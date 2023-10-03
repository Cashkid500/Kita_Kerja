import 'package:kita_kerja/models/Products/response/fetchProductResponse.dart';

abstract class FetchProductSource {
  Future<FetchProductResponse> fetchProduct();
}