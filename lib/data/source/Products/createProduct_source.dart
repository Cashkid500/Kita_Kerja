import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/createProduct_abstract.dart';
import 'package:kita_kerja/models/Products/body/createProduct.dart';
import 'package:kita_kerja/models/Products/response/createProductResponse.dart';

class CreateProductSourceImpl implements CreateProductSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  CreateProductSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<CreateProductResponse> createProduct({required CreateProduct payload}) {
    // TODO: implement createProduct
    throw UnimplementedError();
  }
  
}