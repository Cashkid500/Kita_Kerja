import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/fetchProduct_abstract.dart';
import 'package:kita_kerja/models/Products/response/fetchProductResponse.dart';

class FetchProductSourceImpl implements FetchProductSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchProductSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<FetchProductResponse> fetchProduct() {
    // TODO: implement fetchProduct
    throw UnimplementedError();
  }
  
}