// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createPlanResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      interval: json['interval'] as String?,
      amount: json['amount'] as int?,
      description: json['description'] as String?,
      sendInvoices: json['send_invoices'] as bool?,
      sendSms: json['send_sms'] as bool?,
      currency: json['currency'] as String?,
      integration: json['integration'] as int?,
      domain: json['domain'] as String?,
      planCode: json['plan_code'] as String?,
      invoiceLimit: json['invoice_limit'] as int?,
      hostedPage: json['hosted_page'] as bool?,
      migrate: json['migrate'] as bool?,
      isArchived: json['is_archived'] as bool?,
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'name': instance.name,
      'interval': instance.interval,
      'amount': instance.amount,
      'description': instance.description,
      'send_invoices': instance.sendInvoices,
      'send_sms': instance.sendSms,
      'currency': instance.currency,
      'integration': instance.integration,
      'domain': instance.domain,
      'plan_code': instance.planCode,
      'invoice_limit': instance.invoiceLimit,
      'hosted_page': instance.hostedPage,
      'migrate': instance.migrate,
      'is_archived': instance.isArchived,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
