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

  @override
  Future<ListTerminalsResponse> listTerminals() {
    // TODO: implement listTerminals
    throw UnimplementedError();
  }
  
}