import 'package:kita_kerja/models/Products/body/update_product.dart';
import 'package:kita_kerja/models/Products/response/update_product_response.dart';

abstract class UpdateProductSource {
  Future<UpdateProductResponse> updateProduct({
    required UpdateProduct payload,
  });
}