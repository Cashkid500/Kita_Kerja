import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Payment%20Pages/payment_notifier.dart';
import 'package:kita_kerja/state/Payment%20Pages/payment_state.dart';

// Create Payment Page
final createPaymentPageStateNotifierProvider =
    StateNotifierProvider<CreatePaymentPageStateNotifier, CreatePaymentPageState>(
  (ref) => CreatePaymentPageStateNotifier(ref),
);

// List Payment Pages
final listPaymentPageStateNotifierProvider = StateNotifierProvider<
    ListPaymentPagesStateNotifier, ListPaymentPagesState>(
  (ref) => ListPaymentPagesStateNotifier(ref),
);

// Fetch Payment Page
final fetchPaymentPageStateNotifierProvider = StateNotifierProvider<
    FetchPaymentPageStateNotifier, FetchPaymentPageState>(
  (ref) => FetchPaymentPageStateNotifier(ref),
);

// Update Payment Page
final updatePaymentPageStateNotifierProvider = StateNotifierProvider<
    UpdatePaymentPageStateNotifier, UpdatePaymentPageState>(
  (ref) => UpdatePaymentPageStateNotifier(ref),
);
