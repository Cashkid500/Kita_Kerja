// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_total_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsTotalResponse _$TransactionsTotalResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionsTotalResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionsTotalResponseToJson(
        TransactionsTotalResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      totalTransactions: json['total_transactions'] as int?,
      totalVolume: json['total_volume'] as int?,
      totalVolumeByCurrency:
          (json['total_volume_by_currency'] as List<dynamic>?)
              ?.map((e) => ByCurrency.fromJson(e as Map<String, dynamic>))
              .toList(),
      pendingTransfers: json['pending_transfers'] as int?,
      pendingTransfersByCurrency:
          (json['pending_transfers_by_currency'] as List<dynamic>?)
              ?.map((e) => ByCurrency.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'total_transactions': instance.totalTransactions,
      'total_volume': instance.totalVolume,
      'total_volume_by_currency': instance.totalVolumeByCurrency,
      'pending_transfers': instance.pendingTransfers,
      'pending_transfers_by_currency': instance.pendingTransfersByCurrency,
    };

ByCurrency _$ByCurrencyFromJson(Map<String, dynamic> json) => ByCurrency(
      currency: json['currency'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$ByCurrencyToJson(ByCurrency instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
    };
