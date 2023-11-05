// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportTransactionResponse _$ExportTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    ExportTransactionResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExportTransactionResponseToJson(
        ExportTransactionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      path: json['path'] as String?,
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'path': instance.path,
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };
