import 'dart:ffi';

class InitiateBulkTransfer {
  final String source;
  final String currency;
  final Array transfers;

  InitiateBulkTransfer({
    required this.source,
    required this.currency,
    required this.transfers,
  });
}
