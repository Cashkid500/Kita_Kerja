import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Products/list_products_abstract.dart';
import 'package:kita_kerja/data/source/Products/list_products_abstract.dart';
import 'package:kita_kerja/models/Products/response/list_products_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ListProductsRepoImpl implements ListProductsRepo{
  final NetworkInfo list;
  final ListProductsSource products;

  ListProductsRepoImpl({required Ref ref})
      : products = ref.read(listProductsSourceProvider),
        list = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ListProductsResponse>> listProducts() async {
    ServiceRunner<Failure, ListProductsResponse> sR = ServiceRunner(list);

    return sR.tryRemoteandCatch(
        call: products.listProducts(), errorTitle: "No Products Listed");
  }
}