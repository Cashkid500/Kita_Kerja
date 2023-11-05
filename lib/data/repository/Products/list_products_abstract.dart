import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/response/list_products_response.dart';

abstract class ListProductsRepo {
  Future<Either<Failure, ListProductsResponse>> listProducts();
}