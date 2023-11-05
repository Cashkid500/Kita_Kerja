import 'package:kita_kerja/models/Products/response/list_products_response.dart';

abstract class ListProductsSource {
  Future<ListProductsResponse> listProducts();
}