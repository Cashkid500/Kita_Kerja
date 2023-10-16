class AppEndpoints {
  static const _base = 'https://api.paystack.co';
  
  // Apple Pay Endpoint
  static const unregisterDomain = '$_base/apple-pay/domain';

  // Payment Pages Endpoint
  static const checkSlugAvailability = '$_base/page/check_slug_availability/:slug';
  static const createPaymentPage = '$_base/page';
  static const fetchPaymentPage = '$_base/page/f7r13msq56';
  static const listPaymentPages = '$_base/page';
  static const updatePaymentPage = '$_base/page/f7r13msq56';

  // Plans Endpoint
  static const createPlan = '$_base/plan';
  static const fetchPlan = '$_base/plan/910472';
  static const listPlans = '$_base/plan';
  static const updatePlan = '$_base/plan/910472';

  // Products Endpoint
  static const createProduct = '$_base/product';
  static const fetchProduct = '$_base/product/1306809';
  static const listProducts = '$_base/product';
  static const updateProduct = '$_base/product/1306809';

  // Terminal Endpoint
  static const listTerminals = '$_base/terminal';

  // Transaction Split Endpoint
  static const listSplits = '$_base/split';

  // Transfers Endpoint
  static const listTransfers = '$_base/transfer';

  // Transactions Endpoint
  static const exportTransaction = '$_base/transaction/export';
  static const fetchTransaction = '$_base/transaction/3106248347';
  static const initializeTransaction = '$_base/transaction/initialize';
  static const listTransaction = '$_base/transaction';
  static const transactionsTotal = '$_base/transaction/totals';
  static const verifyTransaction = '$_base/transaction/verify/gp5t39y8nf';
  static const viewTransactionTimeline = '$_base/transaction/timeline/gp5t39y8nf';
}