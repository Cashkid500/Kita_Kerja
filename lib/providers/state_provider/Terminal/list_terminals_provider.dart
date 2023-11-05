import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Terminal/list_terminals_notifier.dart';
import 'package:kita_kerja/state/Terminal/list_terminals_state.dart';

final listTerminalsStateNotifierProvider =
    StateNotifierProvider<ListTerminalsStateNotifier, ListTerminalsState>(
  (ref) => ListTerminalsStateNotifier(ref),
);
