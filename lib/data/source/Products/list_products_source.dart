import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/list_products_abstract.dart';
import 'package:kita_kerja/models/Products/response/list_products_response.dart';

class ListProductsSourceImpl implements ListProductsSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListProductsSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListProductsResponse> listProducts() {
  //   // TODO: implement listProducts
  //   throw UnimplementedError();
  // }
  @override
  Future<ListProductsResponse> listProducts() async {
    String url = AppEndpoints.listProducts;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListProductsResponse responseModel =
            ListProductsResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListProductsResponse responseModel =
          ListProductsResponse.fromJson(data);
      try {
        if (responseModel.status == false) {
          throw Exception(data['message']);
        } else {
          final errorMessage = data['message'];
          throw Exception(errorMessage);
        }
      } on Exception catch (_) {
        rethrow;
      }
    }
  }
}