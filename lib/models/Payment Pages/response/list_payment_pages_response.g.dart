// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_payment_pages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListPaymentPagesResponse _$ListPaymentPagesResponseFromJson(
        Map<String, dynamic> json) =>
    ListPaymentPagesResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListPaymentPagesResponseToJson(
        ListPaymentPagesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      integration: json['integration'] as int?,
      plan: json['plan'],
      domain: json['domain'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      slug: json['slug'] as String?,
      customFields: json['custom_fields'],
      type: json['type'] as String?,
      redirectUrl: json['redirect_url'],
      successMessage: json['success_message'],
      collectPhone: json['collect_phone'] as bool?,
      active: json['active'] as bool?,
      published: json['published'] as bool?,
      migrate: json['migrate'] as bool?,
      notificationEmail: json['notification_email'],
      metadata: json['metadata'],
      splitCode: json['split_code'],
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'integration': instance.integration,
      'plan': instance.plan,
      'domain': instance.domain,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'currency': instance.currency,
      'slug': instance.slug,
      'custom_fields': instance.customFields,
      'type': instance.type,
      'redirect_url': instance.redirectUrl,
      'success_message': instance.successMessage,
      'collect_phone': instance.collectPhone,
      'active': instance.active,
      'published': instance.published,
      'migrate': instance.migrate,
      'notification_email': instance.notificationEmail,
      'metadata': instance.metadata,
      'split_code': instance.splitCode,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
