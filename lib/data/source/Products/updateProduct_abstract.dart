import 'package:kita_kerja/models/Products/body/updateProduct.dart';
import 'package:kita_kerja/models/Products/response/updateProductResponse.dart';

abstract class UpdateProductSource {
  Future<UpdateProductResponse> updateProduct({
    required UpdateProduct payload,
  });
}