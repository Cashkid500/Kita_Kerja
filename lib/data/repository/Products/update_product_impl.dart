import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Products/update_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/update_product_abstract.dart';
import 'package:kita_kerja/models/Products/body/update_product.dart';
import 'package:kita_kerja/models/Products/response/update_product_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class UpdateProductRepoImpl implements UpdateProductRepo{
  final NetworkInfo update;
  final UpdateProductSource product;

  UpdateProductRepoImpl({required Ref ref})
      : product = ref.read(updateProductSourceProvider),
        update = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, UpdateProductResponse>> updateProduct ({
    required UpdateProduct payload,
  })async{
    ServiceRunner<Failure, UpdateProductResponse> sR = ServiceRunner(update);

    return sR.tryRemoteandCatch(
      call: product.updateProduct(payload: payload),
      errorTitle: "No Product Updated"
    );
  }
}