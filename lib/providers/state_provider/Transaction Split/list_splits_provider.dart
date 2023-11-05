import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Transaction%20Split/list_splits_notifier.dart';
import 'package:kita_kerja/state/Transaction%20Split/list_splits_state.dart';

final listSplitsStateNotifierProvider =
    StateNotifierProvider<ListSplitsStateNotifier, ListSplitsState>(
  (ref) => ListSplitsStateNotifier(ref),
);
