import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/body/updateProduct.dart';
import 'package:kita_kerja/models/Products/response/updateProductResponse.dart';

abstract class UpdateProductRepo {
  Future<Either<Failure, UpdateProductResponse>> updateProduct({
    required UpdateProduct payload,
  });
}