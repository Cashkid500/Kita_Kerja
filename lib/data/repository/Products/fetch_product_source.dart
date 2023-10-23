import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Products/fetch_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/fetchProduct_abstract.dart';
import 'package:kita_kerja/models/Products/response/fetchProductResponse.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class FetchProductRepoImpl implements FetchProductRepo{
  final NetworkInfo fetch;
  final FetchProductSource product;

  FetchProductRepoImpl({required Ref ref})
      : product = ref.read(fetchProductSourceProvider),
        fetch = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, FetchProductResponse>> fetchProduct() async {
    ServiceRunner<Failure, FetchProductResponse> sR = ServiceRunner(fetch);

    return sR.tryRemoteandCatch(
        call: product.fetchProduct(), errorTitle: "No Product Fetched");
  }
}