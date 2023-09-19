// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetchPlanResponse.dart';

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
      subscriptions: json['subscriptions'] as List<dynamic>?,
      pages: json['pages'] as List<dynamic>?,
      domain: json['domain'] as String?,
      name: json['name'] as String?,
      planCode: json['plan_code'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      interval: json['interval'] as String?,
      invoiceLimit: json['invoice_limit'] as int?,
      sendInvoices: json['send_invoices'] as bool?,
      sendSms: json['send_sms'] as bool?,
      hostedPage: json['hosted_page'] as bool?,
      hostedPageUrl: json['hosted_page_url'],
      hostedPageSummary: json['hosted_page_summary'],
      currency: json['currency'] as String?,
      migrate: json['migrate'] as bool?,
      isDeleted: json['is_deleted'] as bool?,
      isArchived: json['is_archived'] as bool?,
      id: json['id'] as int?,
      integration: json['integration'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      pagesCount: json['pages_count'] as int?,
      subscribersCount: json['subscribers_count'] as int?,
      subscriptionsCount: json['subscriptions_count'] as int?,
      activeSubscriptionsCount: json['active_subscriptions_count'] as int?,
      totalRevenue: json['total_revenue'] as int?,
      subscribers: json['subscribers'] as List<dynamic>?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'subscriptions': instance.subscriptions,
      'pages': instance.pages,
      'domain': instance.domain,
      'name': instance.name,
      'plan_code': instance.planCode,
      'description': instance.description,
      'amount': instance.amount,
      'interval': instance.interval,
      'invoice_limit': instance.invoiceLimit,
      'send_invoices': instance.sendInvoices,
      'send_sms': instance.sendSms,
      'hosted_page': instance.hostedPage,
      'hosted_page_url': instance.hostedPageUrl,
      'hosted_page_summary': instance.hostedPageSummary,
      'currency': instance.currency,
      'migrate': instance.migrate,
      'is_deleted': instance.isDeleted,
      'is_archived': instance.isArchived,
      'id': instance.id,
      'integration': instance.integration,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'pages_count': instance.pagesCount,
      'subscribers_count': instance.subscribersCount,
      'subscriptions_count': instance.subscriptionsCount,
      'active_subscriptions_count': instance.activeSubscriptionsCount,
      'total_revenue': instance.totalRevenue,
      'subscribers': instance.subscribers,
    };
