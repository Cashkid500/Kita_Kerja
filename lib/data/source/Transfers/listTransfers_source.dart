import 'dart:convert';
import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Transfers/listTransfers_abstract.dart';
import 'package:kita_kerja/models/Transfers/response/listTransfersResponse.dart';

class ListTransfersSourceImpl implements ListTransfersSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  ListTransfersSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<ListTransfersResponse> listTransfers() {
  //   // TODO: implement listTransfers
  //   throw UnimplementedError();
  // }
  @override
  Future<ListTransfersResponse> listTransfers() async {
    String url = AppEndpoints.listTransfers;
    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final ListTransfersResponse responseModel =
            ListTransfersResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final ListTransfersResponse responseModel =
          ListTransfersResponse.fromJson(data);
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