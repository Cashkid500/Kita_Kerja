import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/listProducts_abstract.dart';
import 'package:kita_kerja/models/Products/response/listProductsResponse.dart';

class ListProductsSourceImpl implements ListProductsSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListProductsSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<ListProductsResponse> listProducts() {
    // TODO: implement listProducts
    throw UnimplementedError();
  }
  
}