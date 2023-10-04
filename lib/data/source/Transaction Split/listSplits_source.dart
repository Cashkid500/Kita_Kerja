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

  @override
  Future<ListSplitsResponse> listSplits() {
    // TODO: implement listSplits
    throw UnimplementedError();
  }
  
}