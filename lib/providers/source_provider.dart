import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregisterDomain_abstract.dart';
import 'package:kita_kerja/data/source/Apple%20Pay/unregister_domain_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/CheckSlugAvailability_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/check_slug_availability_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/create_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/create_payment_page_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetch_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/fetch_payment_page_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/list_payment_pages_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/list_payment_pages_source.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/update_payment_page_abstract.dart';
import 'package:kita_kerja/data/source/Payment%20Pages/update_payment_page_source.dart';
import 'package:kita_kerja/data/source/Plans/create_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/create_plan_source.dart';
import 'package:kita_kerja/data/source/Plans/fetch_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/fetch_plan_source.dart';
import 'package:kita_kerja/data/source/Plans/list_plans_abstract.dart';
import 'package:kita_kerja/data/source/Plans/list_plans_source.dart';
import 'package:kita_kerja/data/source/Plans/update_plan_abstract.dart';
import 'package:kita_kerja/data/source/Plans/update_plan_source.dart';
import 'package:kita_kerja/data/source/Products/create_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/create_product_source.dart';
import 'package:kita_kerja/data/source/Products/fetch_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/fetch_product_source.dart';
import 'package:kita_kerja/data/source/Products/list_products_abstract.dart';
import 'package:kita_kerja/data/source/Products/list_products_source.dart';
import 'package:kita_kerja/data/source/Products/update_product_abstract.dart';
import 'package:kita_kerja/data/source/Products/update_product_source.dart';
import 'package:kita_kerja/data/source/Terminal/list_terminals_abstract.dart';
import 'package:kita_kerja/data/source/Terminal/list_terminals_source.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/list_splits_abstract.dart';
import 'package:kita_kerja/data/source/Transaction%20Split/list_splits_source.dart';
import 'package:kita_kerja/data/source/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/export_transaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/fetch_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/fetch_transaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/initialize_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/initialize_transaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/list_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/list_transaction_source.dart';
import 'package:kita_kerja/data/source/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/transactions_total_source.dart';
import 'package:kita_kerja/data/source/Transactions/verify_transactionTimeline_source.dart';
import 'package:kita_kerja/data/source/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/view_transactionTimeline_abstract.dart';
import 'package:kita_kerja/data/source/Transactions/viewTransactionTimeline_source.dart';
import 'package:kita_kerja/data/source/Transfers/list_transfers_abstract.dart';
import 'package:kita_kerja/data/source/Transfers/list_transfers_source.dart';
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
final listPaymentSourceProvider = Provider<ListPaymentPagesSource>(
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