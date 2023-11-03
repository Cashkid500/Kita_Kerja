import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Payment%20Pages/create_payment_page_notifier.dart';
import 'package:kita_kerja/state/Payment%20Pages/create_payment_page_state.dart';

final createPaymentPageStateNotifierProvider =
    StateNotifierProvider<CreatePaymentPageStateNotifier, CreatePaymentPageState>(
  (ref) => CreatePaymentPageStateNotifier(ref),
);