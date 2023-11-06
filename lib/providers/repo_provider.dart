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
import 'package:kita_kerja/data/repository/Plans/create_plan_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/create_plan_impl.dart';
import 'package:kita_kerja/data/repository/Plans/fetch_plan_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/fetch_plan_impl.dart';
import 'package:kita_kerja/data/repository/Plans/list_plans_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/list_plans_impl.dart';
import 'package:kita_kerja/data/repository/Plans/update_plan_abstract.dart';
import 'package:kita_kerja/data/repository/Plans/update_plan_impl.dart';
import 'package:kita_kerja/data/repository/Products/create_product_abstract.dart';
import 'package:kita_kerja/data/repository/Products/create_product_impl.dart';
import 'package:kita_kerja/data/repository/Products/fetch_product_abstract.dart';
import 'package:kita_kerja/data/repository/Products/fetch_product_impl.dart';
import 'package:kita_kerja/data/repository/Products/list_products_abstract.dart';
import 'package:kita_kerja/data/repository/Products/list_products_impl.dart';
import 'package:kita_kerja/data/repository/Products/update_product_abstract.dart';
import 'package:kita_kerja/data/repository/Products/update_product_impl.dart';
import 'package:kita_kerja/data/repository/Terminal/list_terminals_abstract.dart';
import 'package:kita_kerja/data/repository/Terminal/list_terminals_impl.dart';
import 'package:kita_kerja/data/repository/Transaction%20Split/list_splits_abstract.dart';
import 'package:kita_kerja/data/repository/Transaction%20Split/list_splits_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/export_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/export_transaction_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/fetch_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/fetch_transaction_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/initialize_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/initialize_transaction_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/list_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/list_transaction_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/transactions_total_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/transactions_total_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/verify_transaction_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/verify_transaction_impl.dart';
import 'package:kita_kerja/data/repository/Transactions/view_transaction_timeline_abstract.dart';
import 'package:kita_kerja/data/repository/Transactions/view_transaction_timeline_impl.dart';
import 'package:kita_kerja/data/repository/Transfers/list_transfers_abstract.dart';
import 'package:kita_kerja/data/repository/Transfers/list_transfers_impl.dart';

/////////////////////////////////////////////////////////////////////////////
// Apple Pay
/////////////////////////////////////////////////////////////////////////////

// Unregister Domain
final unregisterDomainRepositoryProvider = Provider<UnregisterDomainRepo>(
  (ref) => UnregisterDomainRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Payment Pages
/////////////////////////////////////////////////////////////////////////////

// Check Slug Availability
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

/////////////////////////////////////////////////////////////////////////////
// Plans
/////////////////////////////////////////////////////////////////////////////

// Create Plan
final createPlanRepositoryProvider = Provider<CreatePlanRepo>(
  (ref) => CreatePlanRepoImpl(ref: ref),
);

// List Plans
final listPlansRepositoryProvider = Provider<ListPlansRepo>(
  (ref) => ListPlansRepoImpl(ref: ref),
);

// Fetch Plan
final fetchPlanRepositoryProvider = Provider<FetchPlanRepo>(
  (ref) => FetchPlanRepoImpl(ref: ref),
);

// Update Plan
final updatePlanRepositoryProvider = Provider<UpdatePlanRepo>(
  (ref) => UpdatePlanRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Products
/////////////////////////////////////////////////////////////////////////////

// Create Product
final createProductRepositoryProvider = Provider<CreateProductRepo>(
  (ref) => CreateProductRepoImpl(ref: ref),
);

// List Products
final listProductsRepositoryProvider = Provider<ListProductsRepo>(
  (ref) => ListProductsRepoImpl(ref: ref),
);

// Fetch Product
final fetchProductRepositoryProvider = Provider<FetchProductRepo>(
  (ref) => FetchProductRepoImpl(ref: ref),
);

// Update Product
final updateProductRepositoryProvider = Provider<UpdateProductRepo>(
  (ref) => UpdateProductRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Terminal
/////////////////////////////////////////////////////////////////////////////

// List Terminals
final listTerminalsRepositoryProvider = Provider<ListTerminalsRepo>(
  (ref) => ListTerminalsRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Transaction Split
/////////////////////////////////////////////////////////////////////////////

// List Splits
final listSplitsRepositoryProvider = Provider<ListSplitsRepo>(
  (ref) => ListSplitsRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Transfers
/////////////////////////////////////////////////////////////////////////////

// List Transfers
final listTransfersRepositoryProvider = Provider<ListTransfersRepo>(
  (ref) => ListTransfersRepoImpl(ref: ref),
);

/////////////////////////////////////////////////////////////////////////////
// Transactions
/////////////////////////////////////////////////////////////////////////////

// Export Transaction
final exportTransactionRepositoryProvider = Provider<ExportTransactionRepo>(
  (ref) => ExportTransactionRepoImpl(ref: ref),
);

// Fetch Transaction
final fetchTransactionRepositoryProvider = Provider<FetchTransactionRepo>(
  (ref) => FetchTransactionRepoImpl(ref: ref),
);

// Initialize Transaction
final initializeTransactionRepositoryProvider = Provider<InitializeTransactionRepo>(
  (ref) => InitializeTransactionRepoImpl(ref: ref),
);

// List Transaction
final listTransactionRepositoryProvider = Provider<ListTransactionRepo>(
  (ref) => ListTransactionRepoImpl(ref: ref),
);

// Transactions Total
final transactionsTotalRepositoryProvider = Provider<TransactionsTotalRepo>(
  (ref) => TransactionsTotalRepoImpl(ref: ref),
);

// Verify Transaction
final verifyTransactionRepositoryProvider = Provider<VerifyTransactionRepo>(
  (ref) => VerifyTransactionRepoImpl(ref: ref),
);

// View Transaction Timeline
final viewTransactionTimelineRepositoryProvider = Provider<ViewTransactionTimelineRepo>(
  (ref) => ViewTransactionTimelineRepoImpl(ref: ref),
);
