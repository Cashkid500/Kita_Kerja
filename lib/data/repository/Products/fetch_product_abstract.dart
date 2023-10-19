import 'package:dartz/dartz.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/response/fetchProductResponse.dart';

abstract class FetchProductRepo {
  Future<Either<Failure, FetchProductResponse>> fetchProduct();
}