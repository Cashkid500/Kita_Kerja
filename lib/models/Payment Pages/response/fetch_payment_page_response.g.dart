// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_payment_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchPaymentPageResponse _$FetchPaymentPageResponseFromJson(
        Map<String, dynamic> json) =>
    FetchPaymentPageResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FetchPaymentPageResponseToJson(
        FetchPaymentPageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      integration: json['integration'] as int?,
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

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'integration': instance.integration,
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
