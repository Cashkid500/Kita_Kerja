import 'package:kita_kerja/models/Transactions/response/viewTransactionTimelineResponse.dart';

abstract class ViewTransactionTimelineSource {
  Future<ViewTransactionTimelineResponse> viewTransactionTimeline();
}