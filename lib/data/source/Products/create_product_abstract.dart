import 'package:kita_kerja/models/Products/body/create_product.dart';
import 'package:kita_kerja/models/Products/response/create_product_response.dart';

abstract class CreateProductSource {
  Future<CreateProductResponse> createProduct({
    required CreateProduct payload,
  });
}