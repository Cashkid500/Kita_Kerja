import 'package:kita_kerja/models/Transactions/response/view_transaction_timeline_response.dart';

abstract class ViewTransactionTimelineSource {
  Future<ViewTransactionTimelineResponse> viewTransactionTimeline();
}