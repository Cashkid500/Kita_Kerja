import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/updateProduct_abstract.dart';
import 'package:kita_kerja/models/Products/body/updateProduct.dart';
import 'package:kita_kerja/models/Products/response/updateProductResponse.dart';

class UpdateProductSourceImpl implements UpdateProductSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdateProductSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<UpdateProductResponse> updateProduct({required UpdateProduct payload}) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
  
}