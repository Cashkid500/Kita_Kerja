import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Products/update_product_abstract.dart';
import 'package:kita_kerja/models/Products/body/update_product.dart';
import 'package:kita_kerja/models/Products/response/update_product_response.dart';

class UpdateProductSourceImpl implements UpdateProductSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UpdateProductSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<UpdateProductResponse> updateProduct({required UpdateProduct payload}) {
  //   // TODO: implement updateProduct
  //   throw UnimplementedError();
  // }
  @override
  Future<UpdateProductResponse> updateProduct(
      {required UpdateProduct payload}) async {
    String url = AppEndpoints.updateProduct;
    final body = {
      "name": payload.name,
      "description": payload.description,
      "price": payload.price,
      "currency": payload.currency,
    };
    final response = await networkRetry.networkRetry(
      () => networkRequest.put(
        url,
        body: body,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final UpdateProductResponse responseModel =
            UpdateProductResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final UpdateProductResponse responseModel =
          UpdateProductResponse.fromJson(data);
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