import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/response/fetch_product_response.dart';

abstract class FetchProductRepo {
  Future<Either<Failure, FetchProductResponse>> fetchProduct();
}