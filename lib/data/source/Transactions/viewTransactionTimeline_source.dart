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

  @override
  Future<ViewTransactionTimelineResponse> viewTransactionTimeline() {
    // TODO: implement viewTransactionTimeline
    throw UnimplementedError();
  }
  
}