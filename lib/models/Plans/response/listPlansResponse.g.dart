// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listPlansResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPlansResponse _$ListPlansResponseFromJson(Map<String, dynamic> json) =>
    ListPlansResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListPlansResponseToJson(ListPlansResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
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
      totalSubscriptions: json['total_subscriptions'] as int?,
      activeSubscriptions: json['active_subscriptions'] as int?,
      totalSubscriptionsRevenue: json['total_subscriptions_revenue'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
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
      'total_subscriptions': instance.totalSubscriptions,
      'active_subscriptions': instance.activeSubscriptions,
      'total_subscriptions_revenue': instance.totalSubscriptionsRevenue,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int?,
      skipped: json['skipped'] as int?,
      perPage: json['perPage'] as int?,
      page: json['page'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
      'skipped': instance.skipped,
      'perPage': instance.perPage,
      'page': instance.page,
      'pageCount': instance.pageCount,
    };
