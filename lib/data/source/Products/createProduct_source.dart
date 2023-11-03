import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
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

  // @override
  // Future<CreateProductResponse> createProduct({required CreateProduct payload}) {
  //   // TODO: implement createProduct
  //   throw UnimplementedError();
  // }
  @override
  Future<CreateProductResponse> createProduct(
      {required CreateProduct payload}) async {
    String url = AppEndpoints.createProduct;
    final body = {
      "name": payload.name,
      "description": payload.description,
      "price": payload.price,
      "currency": payload.currency,
    };
    final response = await networkRetry.networkRetry(
      () => networkRequest.post(
        url,
        body: body,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final CreateProductResponse responseModel =
            CreateProductResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final CreateProductResponse responseModel =
          CreateProductResponse.fromJson(data);
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