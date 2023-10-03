import 'package:kita_kerja/models/Products/response/listProductsResponse.dart';

abstract class ListProductsSource {
  Future<ListProductsResponse> listProducts();
}