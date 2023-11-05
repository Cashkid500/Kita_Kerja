import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/fetch_product_abstract.dart';
import 'package:kita_kerja/models/Products/response/fetch_product_response.dart';

class FetchProductSourceImpl implements FetchProductSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  FetchProductSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<FetchProductResponse> fetchProduct() {
  //   // TODO: implement fetchProduct
  //   throw UnimplementedError();
  // }
  @override
  Future<FetchProductResponse> fetchProduct() async {
    String url = AppEndpoints.fetchProduct;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final FetchProductResponse responseModel =
            FetchProductResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final FetchProductResponse responseModel =
          FetchProductResponse.fromJson(data);
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