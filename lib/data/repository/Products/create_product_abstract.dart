import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/body/create_product.dart';
import 'package:kita_kerja/models/Products/response/create_product_response.dart';

abstract class CreateProductRepo {
  Future<Either<Failure, CreateProductResponse>> createProduct({
    required CreateProduct payload,
  });
}