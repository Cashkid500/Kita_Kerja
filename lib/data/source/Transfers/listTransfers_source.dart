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

  @override
  Future<ListTransfersResponse> listTransfers() {
    // TODO: implement listTransfers
    throw UnimplementedError();
  }
  
}