import 'dart:ffi';

class CreateSplits {
  final String name;
  final String type;
  final String currency;
  final Array subaccounts;
  final String bearer_type;
  final String bearer_subaccount;

 CreateSplits ({
    required this.name, 
    required this.type,
    required this.currency,
    required this.subaccounts,
    required this. bearer_type,
    required this. bearer_subaccount});
}
