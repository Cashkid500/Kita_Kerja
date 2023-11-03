import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Apple%20Pay/unregister_domain_notifier.dart';
import 'package:kita_kerja/state/Apple%20Pay/unregister_domain_state.dart';

final unregisterDomainStateNotifierProvider =
    StateNotifierProvider<UnregisterDomainStateNotifier, UnregisterDomainState>(
  (ref) => UnregisterDomainStateNotifier(ref),
);