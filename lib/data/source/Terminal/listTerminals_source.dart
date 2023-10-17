import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Terminal/listTerminals_abstract.dart';
import 'package:kita_kerja/models/Terminal/response/listTerminalsResponse.dart';

class ListTerminalsSourceImpl implements ListTerminalsSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListTerminalsSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListTerminalsResponse> listTerminals() {
  //   // TODO: implement listTerminals
  //   throw UnimplementedError();
  // }
  @override
  Future<ListTerminalsResponse> listTerminals() async {
    String url = AppEndpoints.listTerminals;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListTerminalsResponse responseModel =
            ListTerminalsResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListTerminalsResponse responseModel =
          ListTerminalsResponse.fromJson(data);
      try {
        if (responseModel.status == false) {
          throw Exception(data['message']);
        } else {
          final errorMessage = data['message'];
          throw Exception("API failed");
        }
      } on Exception catch (_) {
        rethrow;
      }
    }
  }
}