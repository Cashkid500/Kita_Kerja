import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregisterDomain_abstract.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregisterDomain_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/CheckSlugAvailability_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/checkSlugAvailability_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/createPaymentPage_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/createPaymentPage_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetchPaymentPage_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetchPaymentPage_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/listPaymentPage_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/listPaymentPage_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/updatePaymentPage_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/updatePaymentPage_source.dart';
import 'package:kita_kerja/data/source/Plans/createPlan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/createPlan_source.dart';
import 'package:kita_kerja/data/source/Plans/fetchPlan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/fetchPlan_source.dart';
import 'package:kita_kerja/data/source/Plans/listPlans_abstract.dart';
import 'package:kita_kerja/data/source/Plans/listPlans_source.dart';
import 'package:kita_kerja/data/source/Plans/updatePlan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/updatePlan_source.dart';
import 'package:kita_kerja/data/source/Products/createProduct_abstract.dart';
import 'package:kita_kerja/data/source/Products/createProduct_source.dart';
import 'package:kita_kerja/data/source/Products/fetchProduct_abstract.dart';
import 'package:kita_kerja/data/source/Products/fetchProduct_source.dart';
import 'package:kita_kerja/data/source/Products/listProducts_abstract.dart';
import 'package:kita_kerja/data/source/Products/listProducts_source.dart';
import 'package:kita_kerja/data/source/Products/updateProduct_abstract.dart';
import 'package:kita_kerja/data/source/Products/updateProduct_source.dart';
import 'package:kita_kerja/data/source/Terminal/listTerminals_abstract.dart';
import 'package:kita_kerja/data/source/Terminal/listTerminals_source.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/listSplits_abstract.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/listSplits_source.dart';
import 'package:kita_kerja/data/source/Transactions/exportTransaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/exportTransaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/fetchTransaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/fetchTransaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/initializeTransaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/initializeTransaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/listTransaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/listTransaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/transactionsTotal_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/transactionsTotal_source.dart';
import 'package:kita_kerja/data/source/Transactions/verifyTransactionTimeline_source.dart';
import 'package:kita_kerja/data/source/Transactions/verifyTransaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/viewTransactionTimeline_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/viewTransactionTimeline_source.dart';
import 'package:kita_kerja/data/source/Transfers/listTransfers_abstract.dart';
import 'package:kita_kerja/data/source/Transfers/listTransfers_source.dart';
import 'package:kita_kerja/providers/network_provider.dart';

final unregisterSourceProvider = Provider<UnregisterDomainSource>(
  (ref) => UnregisterDomainSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// CheckSlugAvailability
final checkSlugSourceProvider = Provider<CheckSlugAvailabilitySource>(
  (ref) => CheckSlugAvailabilitySourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Create Payment Pages
final createPaymentSourceProvider = Provider<CreatePaymentPageSource>(
  (ref) => CreatePaymentPageSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Fetch Payment Page
final fetchPaymentSourceProvider = Provider<FetchPaymentPageSource>(
  (ref) => FetchPaymentPageSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Payment Page
final listPaymentSourceProvider = Provider<ListPaymentPageSource>(
  (ref) => ListPaymentPageSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Update Payment Page
final updatePaymentSourceProvider = Provider<UpdatePaymentPageSource>(
  (ref) => UpdatePaymentPageSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Create Plan
final createPlanSourceProvider = Provider<CreatePlanSource>(
  (ref) => CreatePlanSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Fetch Plan
final fetchPlanSourceProvider = Provider<FetchPlanSource>(
  (ref) => FetchPlanSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Plans
final listPlansSourceProvider = Provider<ListPlansSource>(
  (ref) => ListPlansSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Update Plan
final updatePlanSourceProvider = Provider<UpdatePlanSource>(
  (ref) => UpdatePlanSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Create Product
final createProductSourceProvider = Provider<CreateProductSource>(
  (ref) => CreateProductSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Fetch Product
final fetchProductSourceProvider = Provider<FetchProductSource>(
  (ref) => FetchProductSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Product
final listProductsSourceProvider = Provider<ListProductsSource>(
  (ref) => ListProductsSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Update Product
final updateProductSourceProvider = Provider<UpdateProductSource>(
  (ref) => UpdateProductSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Terminals
final listTerminalsSourceProvider = Provider<ListTerminalsSource>(
  (ref) => ListTerminalsSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Splits
final listSplitsSourceProvider = Provider<ListSplitsSource>(
  (ref) => ListSplitsSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Transfers
final listTransfersSourceProvider = Provider<ListTransfersSource>(
  (ref) => ListTransfersSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Export Transaction
final exportTransactionSourceProvider = Provider<ExportTransactionSource>(
  (ref) => ExportTransactionSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Fetch Transaction
final fetchTransactionSourceProvider = Provider<FetchTransactionSource>(
  (ref) => FetchTransactionSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Initialize Transaction
final initializeTransactionSourceProvider = Provider<InitializeTransactionSource>(
  (ref) => InitializeTransactionSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// List Transaction
final listTransactionSourceProvider = Provider<ListTransactionSource>(
  (ref) => ListTransactionSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Transactions Total
final transactionsTotalSourceProvider = Provider<TransactionsTotalSource>(
  (ref) => TransactionsTotalSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// Verify Transaction
final verifyTransactionSourceProvider = Provider<VerifyTransactionSource>(
  (ref) => VerifyTransactionSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);

// View Transaction Timeline
final viewTransactionTimelineSourceProvider = Provider<ViewTransactionTimelineSource>(
  (ref) => ViewTransactionTimelineSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  ),
);