import 'dart:convert';

import 'package:kita_kerja/constants/app_api_endpoints.dart';
import 'package:kita_kerja/core/network/network_request.dart';
import 'package:kita_kerja/core/network/network_retry.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregisterDomain_abstract.dart';
import 'package:kita_kerja/models/Apple%20Pay/body/unregisterDomain.dart';
import 'package:kita_kerja/models/Apple%20Pay/response/unregisterDomainResponse.dart';

class UnregisterDomainSourceImpl implements UnregisterDomainSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UnregisterDomainSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  // @override
  // Future<UnregisterDomainResponse> unregisterDomain({required UnregisterDomain payload}) {
  //   // TODO: implement unregisterDomain
  //   throw UnimplementedError();
  // }

  @override
  Future<UnregisterDomainResponse> unregisterDomain(
      {required UnregisterDomain payload}) async {
    String url = AppEndpoints.unregisterDomain;
    final body = {
      "domainName": payload.domainName,
    };
    final response = await networkRetry.networkRetry(
      () => networkRequest.delete(
        url,
        body: body,
      ),
    );
    final data = await json.decode(response.body);
    if (response.statusCode == 200) {
      try {
        final UnregisterDomainResponse responseModel =
            UnregisterDomainResponse.fromJson(data);
        return responseModel;
      } on Exception catch (_) {
        rethrow;
      }
    } else {
      final UnregisterDomainResponse responseModel = UnregisterDomainResponse.fromJson(data);
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
