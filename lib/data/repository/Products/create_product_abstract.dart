import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/body/createProduct.dart';
import 'package:kita_kerja/models/Products/response/createProductResponse.dart';

abstract class CreateProductRepo {
  Future<Either<Failure, CreateProductResponse>> createProduct({
    required CreateProduct payload,
  });
}