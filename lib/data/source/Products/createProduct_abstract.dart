import 'package:kita_kerja/models/Products/body/createProduct.dart';
import 'package:kita_kerja/models/Products/response/createProductResponse.dart';

abstract class CreateProductSource {
  Future<CreateProductResponse> createProduct({
    required CreateProduct payload,
  });
}