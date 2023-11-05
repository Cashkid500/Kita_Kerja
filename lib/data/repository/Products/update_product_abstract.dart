import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/body/update_product.dart';
import 'package:kita_kerja/models/Products/response/update_product_response.dart';

abstract class UpdateProductRepo {
  Future<Either<Failure, UpdateProductResponse>> updateProduct({
    required UpdateProduct payload,
  });
}