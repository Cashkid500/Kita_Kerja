import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/listSplits_abstract.dart';
import 'package:kita_kerja/models/Transaction%20Split/response/listSplitsResponse.dart';

class ListSplitsSourceImpl implements ListSplitsSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListSplitsSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListSplitsResponse> listSplits() {
  //   // TODO: implement listSplits
  //   throw UnimplementedError();
  // }
  @override
  Future<ListSplitsResponse> listSplits() async {
    String url = AppEndpoints.listSplits;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListSplitsResponse responseModel =
            ListSplitsResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListSplitsResponse responseModel =
          ListSplitsResponse.fromJson(data);
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