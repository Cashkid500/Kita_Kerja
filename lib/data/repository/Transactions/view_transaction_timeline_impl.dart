import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/core/network/network_info.dart';
import 'package:kita_kerja/core/runner/service.dart';
import 'package:kita_kerja/data/repository/Transactions/view_transaction_timeline_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/view_transactionTimeline_abstract.dart';
import 'package:kita_kerja/models/Transactions/response/view_transaction_timeline_response.dart';
import 'package:kita_kerja/providers/network_provider.dart';
import 'package:kita_kerja/providers/source_provider.dart';

class ViewTransactionTimelineRepoImpl implements ViewTransactionTimelineRepo{
  final NetworkInfo view;
  final ViewTransactionTimelineSource transaction;

  ViewTransactionTimelineRepoImpl({required Ref ref})
      : transaction = ref.read(viewTransactionTimelineSourceProvider),
        view = ref.read(networkInfoProvider);

  @override
  Future<Either<Failure, ViewTransactionTimelineResponse>> viewTransactionTimeline() async {
    ServiceRunner<Failure, ViewTransactionTimelineResponse> sR = ServiceRunner(view);

    return sR.tryRemoteandCatch(
        call: transaction.viewTransactionTimeline(), 
        errorTitle: "Transaction Timeline Not Viewed");
  }
}