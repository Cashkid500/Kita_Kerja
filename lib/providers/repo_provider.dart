import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_abstract.dart';
import 'package:kita_kerja/data/repository/Apple%20Pay/unregister_domain_impl.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/check_slug_availability_impl.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/create_payment_page_impl.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/fetch_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/fetch_payment_page_impl.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/list_payment_pages_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/list_payment_pages_impl.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/update_payment_page_abstract.dart';
import 'package:kita_kerja/data/repository/Payment%20Pages/update_payment_page_impl.dart';

// Apple Pay
final unregisterDomainRepositoryProvider = Provider<UnregisterDomainRepo>(
  (ref) => UnregisterDomainRepoImpl(ref: ref),
);

// Payment Pages
final checkSlugAvailabilityRepositoryProvider = Provider<CheckSlugAvailabilityRepo>(
  (ref) => CheckSlugAvailabilityRepoImpl(ref: ref),
);

// Create Payment Page
final createPaymentPageRepositoryProvider = Provider<CreatePaymentPageRepo>(
  (ref) => CreatePaymentPageRepoImpl(ref: ref),
);

// List Payment Page
final listPaymentPagesRepositoryProvider = Provider<ListPaymentPagesRepo>(
  (ref) => ListPaymentPagesRepoImpl(ref: ref),
);

// Fetch Payment Pages
final fetchPaymentPageRepositoryProvider = Provider<FetchPaymentPageRepo>(
  (ref) => FetchPaymentPageRepoImpl(ref: ref),
);

// Update Payment Page
final updatePaymentPageRepositoryProvider = Provider<UpdatePaymentPageRepo>(
  (ref) => UpdatePaymentPageRepoImpl(ref: ref),
);
