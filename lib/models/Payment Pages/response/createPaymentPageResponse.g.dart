// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createPaymentPageResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentPageResponse _$CreatePaymentPageResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentPageResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePaymentPageResponseToJson(
        CreatePaymentPageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as int?,
      integration: json['integration'] as int?,
      domain: json['domain'] as String?,
      slug: json['slug'] as String?,
      currency: json['currency'] as String?,
      type: json['type'] as String?,
      collectPhone: json['collect_phone'] as bool?,
      active: json['active'] as bool?,
      published: json['published'] as bool?,
      migrate: json['migrate'] as bool?,
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
      'description': instance.description,
      'amount': instance.amount,
      'integration': instance.integration,
      'domain': instance.domain,
      'slug': instance.slug,
      'currency': instance.currency,
      'type': instance.type,
      'collect_phone': instance.collectPhone,
      'active': instance.active,
      'published': instance.published,
      'migrate': instance.migrate,
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
