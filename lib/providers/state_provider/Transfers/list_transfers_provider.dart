import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Transfers/list_transfers.dart';
import 'package:kita_kerja/state/Transfers/list_transfers_notifier.dart';

final listTransfersStateNotifierProvider =
    StateNotifierProvider<ListTransfersStateNotifier, ListTransfersState>(
  (ref) => ListTransfersStateNotifier(ref),
);
