import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Products/create_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/createProduct_abstract.dart';
import 'package:kita_kerja/models/Products/body/createProduct.dart';
import 'package:kita_kerja/models/Products/response/createProductResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class CreateProductRepoImpl implements CreateProductRepo{
  final NetworkInfo create;
  final CreateProductSource product;

  CreateProductRepoImpl({required Ref ref})
      : product = ref.read(createProductSourceProvider),
        create = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, CreateProductResponse>> createProduct ({
    required CreateProduct payload,
  })async{
    ServiceRunner<Failure, CreateProductResponse> sR = ServiceRunner(create);

    return sR.tryRemoteandCatch(
      call: product.createProduct(payload: payload),
      errorTitle: "No Product Created"
    );
  }
}