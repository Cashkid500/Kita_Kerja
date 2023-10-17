import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transactions/viewTransactionTimeline_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/viewTransactionTimelineResponse.dart';

class ViewTransactionTimelineSourceImpl implements ViewTransactionTimelineSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ViewTransactionTimelineSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ViewTransactionTimelineResponse> viewTransactionTimeline() {
  //   // TODO: implement viewTransactionTimeline
  //   throw UnimplementedError();
  // }
  @override
  Future<ViewTransactionTimelineResponse> viewTransactionTimeline() async {
    String url = AppEndpoints.viewTransactionTimeline;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ViewTransactionTimelineResponse responseModel =
            ViewTransactionTimelineResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ViewTransactionTimelineResponse responseModel =
          ViewTransactionTimelineResponse.fromJson(data);
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