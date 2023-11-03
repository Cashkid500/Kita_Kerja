import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_abstract.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_source.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_source.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_source.dart';

// Apple Pay
final unregisterDomainRepositoryProvider = Provider<UnregisterDomainRepo>(
  (ref) => UnregisterDomainRepoImpl(ref: ref),
);

// Payment Pages
final checkSlugAvailabilityRepositoryProvider = Provider<CheckSlugAvailabilityRepo>(
  (ref) => CheckSlugAvailabilityRepoImpl(ref: ref),
);

final createPaymentPageRepositoryProvider = Provider<CreatePaymentPageRepo>(
  (ref) => CreatePaymentPageRepoImpl(ref: ref),
);