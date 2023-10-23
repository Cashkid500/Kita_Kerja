import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/UnregisterDomain_abstract.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/UnregisterDomain_source.dart';
import 'package:kita_kerja/providers/network_provider.dart';

// final unregisterDomainSourceProvider = Provider<UnregisterDomainSource>(
//   (ref) => UnregisterDomainSourceImpl(
//     networkRequest: ref.read(networkRequestProvider),
//     networkRetry: ref.read(networkRetryProvider),
//   ),
// );

final unregisterDomainSourceProvider = Provider<UnregisterDomainSource>(
  (ref) => UnregisterDomainSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);
